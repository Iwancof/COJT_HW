module snd_regctl
    (
        input                  ACLK,
        input                  ARST,
        input      [15:0]      WRADDR,
        input      [3:0]       BYTEEN,
        input                  WREN,
        input      [31:0]      WDATA,
        input      [15:0]      RDADDR,
        input                  RDEN,
        output reg [31:0]      RDATA,
        output     [28:0]      SNDADDR,
        output     [28:0]      SNDSIZE,
        output     [7:0]       VOLUME,
        output                 LOOP,
        output     [1:0]       COMMAND

    );

    wire write_reg = WREN && WRADDR[15:12] == 4'd3;
    wire read_reg  = RDEN && RDADDR[15:12] == 4'd3;

    // Additional register declarations
    reg [28:0] sndaddr_reg;
    reg [28:0] sndsize_reg;
    reg [7:0]  volume_reg;
    reg        loop_reg;
    reg [1:0]  command_reg;

    // Handling writes to other registers
    always @(posedge ACLK) begin
        if (ARST) begin
            // Reset all registers
            sndaddr_reg <= 29'd0;
            sndsize_reg <= 29'd0;
            volume_reg  <= 8'd0;
            loop_reg    <= 1'b0;
            command_reg <= 2'd0;
        end else if (write_reg) begin
            // Handle writes to each register based on address
            case (WRADDR[11:2])
                10'd0: begin
                    if (BYTEEN[0])  sndaddr_reg[ 7: 0] <= WDATA[ 7: 0];
                    if (BYTEEN[1])  sndaddr_reg[15: 8] <= WDATA[15: 8];
                    if (BYTEEN[2])  sndaddr_reg[23:16] <= WDATA[23:16];
                    if (BYTEEN[3])  sndaddr_reg[28:24] <= WDATA[28:24];
                end
                10'd1: begin
                    if (BYTEEN[0])  sndsize_reg[ 7: 0] <= WDATA[ 7: 0];
                    if (BYTEEN[1])  sndsize_reg[15: 8] <= WDATA[15: 8];
                    if (BYTEEN[2])  sndsize_reg[23:16] <= WDATA[23:16];
                    if (BYTEEN[3])  sndsize_reg[28:24] <= WDATA[28:24];
                end
                10'd2: begin
                    volume_reg <= 8'hFF;
                end
                10'd3: begin
                    if (BYTEEN[0]) loop_reg <= WDATA[2];
                    if (BYTEEN[0]) command_reg <= WDATA[1:0];
                end
            endcase
        end
    end

    // Handling reads from the registers
    always @(posedge ACLK) begin
        if (ARST) begin
            RDATA <= 32'd0;
        end else if (read_reg) begin
            case (RDADDR[11:2])
                10'd0: RDATA <= {3'd0, SNDADDR};
                10'd1: RDATA <= {3'd0, sndsize_reg};
                10'd2: RDATA <= {24'd0, volume_reg};
                10'd3: RDATA <= {29'd0, loop_reg, command_reg};
                default: RDATA <= 32'd0;
            endcase
        end
    end

    // Output assignments for non-register outputs
    assign SNDADDR = sndaddr_reg;
    assign SNDSIZE = sndsize_reg;
    assign VOLUME  = volume_reg;
    assign LOOP    = loop_reg;
    assign COMMAND = command_reg;



endmodule