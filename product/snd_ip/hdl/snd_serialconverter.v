module snd_serialconverter
    (
        input         SND_BCLK,
        input         MRST,
        input  [10:0] FIFORDCNT,
        input  [31:0] DOUT,
        input  [28:0] DATASIZE,
        input         LOOP,
        input  [1:0]  COMMAND,
        output        FIFORST,
        output        FIFORD,
        output        SND_LRCLK,
        output  SND_DOUT
    );

    reg [5:0]  I2SCNT;
    reg [27:0] DATACNT;
    reg  SND_DOUTreg;

    //ス�?ート�?�シン
    reg [2:0]  CUR, NXT;
    localparam S_NOP      = 3'b000,
               S_PLAYING  = 3'b001,
               S_PAUSED   = 3'b010,
               S_RESET1   = 3'b011,
               S_RESET2   = 3'b100,
               S_RESET3   = 3'b101;

    always @(posedge SND_BCLK) begin
        if(MRST)CUR <= S_NOP;
        else CUR <= NXT;
    end

    always @* begin
        case (CUR)
            S_NOP:
                if(COMMAND==2'b01) NXT <= S_PLAYING;
                else NXT <= S_NOP;
            S_PLAYING:
                if(COMMAND==2'b10) NXT <= S_PAUSED;
                else if(COMMAND==2'b11) NXT <= S_RESET1;
                else if(DATASIZE==DATACNT&&LOOP) NXT <= S_PLAYING;
                else if(DATASIZE==DATACNT&&!LOOP) NXT <= S_RESET1;
            S_PAUSED:
                if(COMMAND==2'b01) NXT <= S_PLAYING;
                else if(COMMAND==2'b11) NXT <= S_RESET1;
            S_RESET1:
                NXT <= S_RESET2;
            S_RESET2:
                NXT <= S_RESET3;
            S_RESET3:
                NXT <= S_NOP;
        endcase
    end

    //FIFORST
    reg FIFORSTreg;
    always @(posedge SND_BCLK) begin
        if(MRST||CUR==S_RESET1||CUR==S_RESET2||CUR==S_RESET3)FIFORSTreg <= 1'b1;
        else FIFORSTreg <= 1'b0;
    end

    assign FIFORST = FIFORSTreg;

    //LRカウンタ
    always @(negedge SND_BCLK) begin
        if(MRST||CUR!=S_PLAYING)I2SCNT <= 6'b0;
        else if(FIFORDCNT>6'd32) I2SCNT <= I2SCNT + 1'b1;
    end

    //LRCLK
    reg SND_LRCLKreg;
    always @(negedge SND_BCLK) begin
        if(MRST||(I2SCNT<6'd32&&I2SCNT>=6'd0&&FIFORDCNT>6'd32))SND_LRCLKreg <= 1'b0;
        else SND_LRCLKreg <= 1'b1; 
    end

    assign SND_LRCLK = SND_LRCLKreg;

    //�?ータ数カウンタ
    always @(negedge SND_BCLK) begin
        if(MRST||CUR==S_NOP)DATACNT <= 28'd0;
        else if(I2SCNT==6'd15||I2SCNT==6'd31||I2SCNT==6'd47||I2SCNT==6'd63)DATACNT <= DATACNT + 28'd1;
    end

    //FIFORD
    reg FIFORDreg;
    always @(negedge SND_BCLK) begin
        if(MRST||CUR!=S_PLAYING)FIFORDreg <= 1'b0;
        else if(FIFORDCNT>6'd32&&I2SCNT==6'd0) FIFORDreg <= 1'b1;
        else FIFORDreg <= 1'b0;
    end
    assign FIFORD = FIFORDreg;

    //DOUT
    always @(negedge SND_BCLK) begin
        if(MRST||CUR==S_NOP)SND_DOUTreg <= 32'b0;
        else if(!SND_LRCLK&&I2SCNT>0&&I2SCNT<17)SND_DOUTreg <= DOUT[31-15-I2SCNT];
        else if(SND_LRCLK&&I2SCNT>32&&I2SCNT<49)SND_DOUTreg <= DOUT[31-15-(I2SCNT-32)];
        else SND_DOUTreg <= 32'b0;
    end

    assign SND_DOUT = SND_DOUTreg;

endmodule