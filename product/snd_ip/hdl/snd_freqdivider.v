module snd_freqdivider
    (
        input  SND_MCLK,
        output SND_BCLK
    );


    reg [2:0] MCLKCNT=4'b0;

    always @(posedge SND_MCLK) begin
        MCLKCNT <= MCLKCNT + 1'b1;
    end

    assign SND_BCLK = (MCLKCNT<4'd4)? 1'b1 : 1'b0;

endmodule