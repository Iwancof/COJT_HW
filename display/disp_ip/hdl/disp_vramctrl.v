//-----------------------------------------------------------------------------
// Title       : VRAM?��?��?��?��i?��?��u?��Ґ݌v?��Ώہj
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

  wire vr_start;
  clock_sync #(.WIDTH(1)) clock_sync(
    .clk(ACLK),
    .foreign_signal(VRSTART),
    .result(vr_start)
  );


  // ----- State machine of ADDRESS READ -----
  localparam AR_IDLE  = 1'b0;
  localparam AR_SADDR = 1'b1;
  reg[0: 0] ar_state, ar_next;

  always @(posedge ACLK) begin
    if (ARST) begin
      ar_state <= AR_IDLE;
    else
      ar_state <= next;
    end
  end

  // address control
  localparam bytesize_per_burst = 32'd32 * 32'd8;
  reg[31: 0] window_last_address;
  always @(posedge ACLK) begin
    if(ARST) begin
      window_last_address <= 32'b01010101010101010101010101010101;
    end else begin
      window_last_address <= 4 * HDO * VDO;
    end
  end 

  assign ARVALID = ar_state == AR_SADDR;
  assign ARADDR = current_address + DISPADDR;
  wire start_reading = vr_start && DISPON;
  wire address_read_done = ARVALID && ARREADY;

  reg[31: 0] current_address;
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
    // ar_next
    if (ARST) begin
      ar_next <= AR_IDLE;
    end else begin
      // クソでか条件分岐
      case (ar_state)
        AR_IDLE: begin
          if (start_reading && current_address < window_last_address) begin
            ar_next <= AR_SADDR;
          end else begin
            ar_next <= AR_IDLE;
          end
        end
        AR_SADDR: begin
          if (address_read_done) begin
            ar_next <= AR_IDLE;
          end else begin
            ar_next <= AR_SADDR;
          end
        end
      endcase
    end
  end

  // ----- State machine of DATA READ -----
  localparam SR_WAIT  = 1'b0;
  localparam SR_READ  = 1'b1;
  reg[1: 0] sr_state, sr_next;

  always @(*) begin
    if (ARST) begin
      sr_state <= SR_WAIT;
    end else begin
      sr_state <= sr_next;
    end
  end

  assign RREADY = sr_state == SR_READ;

  always @(*) begin
    // sr_next
    if(ARST) begin
      sr_next <= SR_WAIT;
    end else begin
      case (sr_state)
        SR_WAIT: begin
          if (start_reading && BUF_WREADY) begin
            sr_next <= SR_READ;
          end else begin
            sr_next <= SR_WAIT;
          end
        end
        SR_READ: begin
          if (RVALID && RLAST) begin
            sr_next <= SR_WAIT;
          end else begin
            sr_next <= SR_READ;
          end
        end
      endcase
    end
  end

endmodule
