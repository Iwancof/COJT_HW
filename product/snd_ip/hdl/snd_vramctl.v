module snd_vramctl
    (
        input ACLK,
        input ARST,
        // Read Address
        output     [31:0]  ARADDR,
        output             ARVALID,
        input              ARREADY,
        // Read Data 
        input              RLAST,
        input              RVALID,
        output             RREADY,
        
        input      [28:0]  SNDADDR,
        input      [28:0]  SNDSIZE,
        input              LOOP,
        input      [1:0]   COMMAND,

        input      [10:0]  FIFORDCNT
    );

    reg [1:0] CUR, NXT;
    localparam  S_IDLE    = 2'b00,
                S_SETADDR = 2'b01,
                S_READ    = 2'b10,
                S_WAIT    = 2'b11;

    always @(posedge ACLK) begin
        if (ARST) begin
            CUR <= S_IDLE;
        end else begin
            CUR <= NXT;
        end
    end

     // Define state transitions
    always @* begin
        case (CUR)
            S_IDLE: begin
                if (COMMAND == 2'b01) begin // Check if command to start
                    NXT <= S_SETADDR;
                end else begin
                    NXT <= S_IDLE;
                end
            end
            S_SETADDR: begin
                if (ARREADY) begin
                    NXT <= S_READ;
                end else begin
                    NXT <= S_SETADDR;
                end
            end
            S_READ: begin
                if (RLAST && RVALID) begin
                    if (LOOP && SNDSIZE==TRANSACTION*32'd256) begin
                        NXT <= S_SETADDR; // Loop back if LOOP is enabled and size is not zero
                    end else if (FIFORDCNT>11'd1024) begin
                        NXT <= S_WAIT; // Go to IDLE state
                    end else begin
                        NXT <= S_IDLE;
                    end
                end else begin
                    NXT <= S_READ;
                end
            end
            S_WAIT: begin
                if (FIFORDCNT<11'd1024) begin
                    NXT <= S_SETADDR;
                end else begin
                    NXT <= S_WAIT;
                end
            end
            default: NXT <= S_IDLE;
        endcase
    end

    //AR
    reg [31:0] TRANSACTION;
    always @(posedge ACLK) begin
        if (ARST||SNDSIZE==TRANSACTION*32'd256) begin
            TRANSACTION <= 32'd0;
        end else if (CUR == S_READ) begin
            if(RLAST)TRANSACTION <= TRANSACTION + 32'd1;
        end
    end
    assign ARVALID = (CUR==S_SETADDR);
    assign ARADDR = TRANSACTION * 32'd256 + SNDADDR;

    //R
    assign RREADY = RVALID;

endmodule