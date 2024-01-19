module cam_color_conv(
    input   [7: 0]  U,
    input   [7: 0]  V,
    input   [7: 0]  Y1,
    input   [7: 0]  Y2,

    output  [47: 0] RGB
);

wire    [18: 0] raw_R1  = 19'd298 * Y1  + 19'd409 * V   - 19'd57068;
wire    [18: 0] raw_R2  = 19'd298 * Y2  + 19'd409 * V   - 19'd57068;
wire    [18: 0] raw_G1  = 19'd298 * Y1  - 19'd208 * V   - 19'd100 * U   + 19'd34697;
wire    [18: 0] raw_G2  = 19'd298 * Y2  - 19'd208 * V   - 19'd100 * U   + 19'd34697;
wire    [18: 0] raw_B1  = 19'd298 * Y1                  + 19'd516 * U   - 19'd70870;
wire    [18: 0] raw_B2  = 19'd298 * Y2                  + 19'd516 * U   - 19'd70870;

wire    [7: 0]  R1  = raw_R1[18] ? 0 : ((raw_R1[17] || raw_R1[16]) ? 255 : raw_R1[15: 8]);
wire    [7: 0]  R2  = raw_R2[18] ? 0 : ((raw_R2[17] || raw_R2[16]) ? 255 : raw_R2[15: 8]);
wire    [7: 0]  G1  = raw_G1[18] ? 0 : ((raw_G1[17] || raw_G1[16]) ? 255 : raw_G1[15: 8]);
wire    [7: 0]  G2  = raw_G2[18] ? 0 : ((raw_G2[17] || raw_G2[16]) ? 255 : raw_G2[15: 8]);
wire    [7: 0]  B1  = raw_B1[18] ? 0 : ((raw_B1[17] || raw_B1[16]) ? 255 : raw_B1[15: 8]);
wire    [7: 0]  B2  = raw_B2[18] ? 0 : ((raw_B2[17] || raw_B2[16]) ? 255 : raw_B2[15: 8]);

assign  RGB = {R2, G2, B2, R1, G1, B1};

endmodule

