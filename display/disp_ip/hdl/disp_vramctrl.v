//-----------------------------------------------------------------------------
// Title       : VRAM?øΩ?øΩ?øΩ?øΩi?øΩ?øΩu?øΩ“ê›åv?øΩŒè€Åj
// Project     : display
// Filename    : disp_vramctrl.v
//-----------------------------------------------------------------------------
// Description :
// 
//-----------------------------------------------------------------------------
// Revisions   :
// Date        Version  Author        Description
// 202?/??/??  1.00     ???????????   Created
//-----------------------------------------------------------------------------

module disp_vramctrl (
      // System Signals
      input           ACLK,
      input           ARST,
      
      // Read Address
      output  [31:0]  ARADDR,
      output          ARVALID,
      input           ARREADY,
      // Read Data 
      input           RLAST,
      input           RVALID,
      output          RREADY,

      input   [1:0]   RESOL,

      input           VRSTART,
      input           DISPON,
      input   [28:0]  DISPADDR,
      input           BUF_WREADY
  );

  `include "syncgen_param.vh"

  localparam S_IDEL = 2'b00;
  localparam S_SETADDR = 2'b01;
  localparam S_READ = 2'b10;
  localparam S_WAIT = 2'b11;

  // assign M_AXI_ARLEN   = 8'h31;  // 32 words
  // assign M_AXI_ARSIZE  = 3'b011; // 8 byte
  localparam bytesize_per_burst = 32'd32 * 32'd8;

  reg[1: 0] state, next;
  reg[31: 0] current_address;
  reg[31: 0] window_last_address;
  wire vr_start;

  always @(posedge ACLK) begin
    if(ARST) begin
      window_last_address <= 32'b01010101010101010101010101010101;
    end else begin
      window_last_address <= 4 * HDO * VDO;
    end
  end 

  wire waiting_for_read, address_read_done;
  clock_sync #(.WIDTH(1)) clock_sync(
    .clk(ACLK),
    .foreign_signal(VRSTART),
    .result(vr_start)
  );

  assign ARVALID = (state == S_SETADDR);
  assign RREADY = state == S_READ;
  assign ARADDR = current_address + DISPADDR;
  assign waiting_for_read = vr_start && DISPON;
  assign address_read_done = ARVALID && ARREADY;

  always @(posedge ACLK) begin
    // state
    if (ARST) begin 
      state <= S_IDEL;
    end else begin
      state <= next;
    end
  end

  always @(posedge ACLK) begin
    // current_address
    if (ARST) begin
      current_address <= 0;
    end else if (state == S_IDEL) begin
      current_address <= 0;
    end else if (address_read_done) begin
      current_address <= current_address + bytesize_per_burst;
    end
  end

  always @(*) begin
    // next
    case (state)
      S_IDEL:     if (waiting_for_read) next <= S_SETADDR;
                  else next <= S_IDEL;
      S_SETADDR:  if (ARREADY) begin
                    next <= S_READ;
                  end else begin
                    next <= S_SETADDR;
                  end
      S_READ:     if(RLAST && RREADY && RVALID) begin
                    if(current_address == window_last_address + bytesize_per_burst) begin
                      next <= S_IDEL;
                    end else if(BUF_WREADY) begin
                      next <= S_SETADDR;
                    end else begin
                      next <= S_WAIT;
                    end
                  end else begin
                    next <= S_READ;
                  end
      S_WAIT:     if(BUF_WREADY) begin
                    next <= S_SETADDR;
                  end else begin
                    next <= S_WAIT;
                  end
      default:    next <= S_IDEL;
    endcase
  end

endmodule
