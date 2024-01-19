`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2023/04/28 16:09:55
// Design Name: 
// Module Name: mult
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mult
    (
        input [7:0] a,
        input [7:0] b,
        output [15:0] x
    );

    wire [7: 0] w0, w1, w2, w3, w4, w5, w6, w7;
    extend_and r0(.a(a), .enable(b[0]), .x(w0));
    extend_and r1(.a(a), .enable(b[1]), .x(w1));
    extend_and r2(.a(a), .enable(b[2]), .x(w2));
    extend_and r3(.a(a), .enable(b[3]), .x(w3));
    extend_and r4(.a(a), .enable(b[4]), .x(w4));
    extend_and r5(.a(a), .enable(b[5]), .x(w5));
    extend_and r6(.a(a), .enable(b[6]), .x(w6));
    extend_and r7(.a(a), .enable(b[7]), .x(w7));

    wire [12: 0] S101;
    wire [12: 0] C101;
    wire [6: 0] S102;
    wire [6: 0] C102;
    wire [0: 0] S103;
    wire [0: 0] C103;

    // first step

    half_adder h101(.A(w0[1]), .B(w1[0]), .S(S101[0]), .CO(C101[0]));
    half_adder h102(.A(w6[7]), .B(w7[6]), .S(S101[12]), .CO(C101[12]));

    half_adder h103(.A(w3[1]), .B(w4[0]), .S(S102[0]), .CO(C102[0]));
    half_adder h104(.A(w6[4]), .B(w7[3]), .S(S102[6]), .CO(C102[6]));

    half_adder h105(.A(w6[1]), .B(w7[0]), .S(S103[0]), .CO(C103[0]));

    full_adder f101(.A(w0[2]), .B(w1[1]), .CI(w2[0]), .S(S101[1]), .CO(C101[1]));
    full_adder f102(.A(w0[3]), .B(w1[2]), .CI(w2[1]), .S(S101[2]), .CO(C101[2]));
    full_adder f103(.A(w0[4]), .B(w1[3]), .CI(w2[2]), .S(S101[3]), .CO(C101[3]));
    full_adder f104(.A(w0[5]), .B(w1[4]), .CI(w2[3]), .S(S101[4]), .CO(C101[4]));
    full_adder f105(.A(w0[6]), .B(w1[5]), .CI(w2[4]), .S(S101[5]), .CO(C101[5]));
    full_adder f106(.A(w0[7]), .B(w1[6]), .CI(w2[5]), .S(S101[6]), .CO(C101[6]));
    full_adder f107(.A(w1[7]), .B(w2[6]), .CI(w3[5]), .S(S101[7]), .CO(C101[7]));
    full_adder f108(.A(w2[7]), .B(w3[6]), .CI(w4[5]), .S(S101[8]), .CO(C101[8]));
    full_adder f109(.A(w3[7]), .B(w4[6]), .CI(w5[5]), .S(S101[9]), .CO(C101[9]));
    full_adder f110(.A(w4[7]), .B(w5[6]), .CI(w6[5]), .S(S101[10]), .CO(C101[10]));
    full_adder f111(.A(w5[7]), .B(w6[6]), .CI(w7[5]), .S(S101[11]), .CO(C101[11]));

    full_adder f112(.A(w3[2]), .B(w4[1]), .CI(w5[0]), .S(S102[1]), .CO(C102[1]));
    full_adder f113(.A(w3[3]), .B(w4[2]), .CI(w5[1]), .S(S102[2]), .CO(C102[2]));
    full_adder f114(.A(w3[4]), .B(w4[3]), .CI(w5[2]), .S(S102[3]), .CO(C102[3]));
    full_adder f115(.A(w4[4]), .B(w5[3]), .CI(w6[2]), .S(S102[4]), .CO(C102[4]));
    full_adder f116(.A(w5[4]), .B(w6[3]), .CI(w7[2]), .S(S102[5]), .CO(C102[5]));

    // second step

    wire [12: 0] S201;
    wire [2: 0] S202;
    wire [11: 0] C201;
    wire [4: 0] C202;
    wire [2: 0] C203;

    assign S201[0] = S101[0];
    half_adder h201(.A(S101[1]), .B(C101[0]), .S(S201[1]), .CO(C201[0]));

    half_adder h202(.A(C102[1]), .B(w6[0]), .S(S202[0]), .CO(C203[0]));
    half_adder h203(.A(C102[2]), .B(S103[0]), .S(S202[1]), .CO(C203[1]));

    full_adder f201(.A(S101[2]), .B(C101[1]), .CI(w3[0]), .S(S201[2]), .CO(C201[1]));
    full_adder f202(.A(S101[3]), .B(C101[2]), .CI(S102[0]), .S(S201[3]), .CO(C201[2]));
    full_adder f203(.A(S101[4]), .B(C101[3]), .CI(S102[1]), .S(S201[4]), .CO(C201[3]));
    full_adder f204(.A(S101[5]), .B(C101[4]), .CI(S102[2]), .S(S201[5]), .CO(C201[4]));
    full_adder f205(.A(S101[6]), .B(C101[5]), .CI(S102[3]), .S(S201[6]), .CO(C201[5]));
    full_adder f206(.A(S101[7]), .B(C101[6]), .CI(S102[4]), .S(S201[7]), .CO(C201[6]));
    full_adder f207(.A(S101[8]), .B(C101[7]), .CI(S102[5]), .S(S201[8]), .CO(C201[7]));
    full_adder f208(.A(S101[9]), .B(C101[8]), .CI(S102[6]), .S(S201[9]), .CO(C201[8]));
    full_adder f209(.A(S101[10]), .B(C101[9]), .CI(w7[4]), .S(S201[10]), .CO(C202[4]));

    assign S201[11] = S101[11];
    assign S201[12] = S101[12];
    assign C201[9] = C101[10];
    assign C201[10] = C101[11];
    assign C201[11] = C101[12];

    assign C202[0] = C102[0];
    assign C202[1] = C102[4];
    assign C202[2] = C102[5];
    assign C202[3] = C102[6];

    full_adder f210(.A(C102[3]), .B(w7[1]), .CI(C103[0]), .S(S202[2]), .CO(C203[2]));

    // third

    wire [12: 0] S301;
    wire [10: 0] C301;
    wire [3: 0] C302;

    assign S301[0] = S201[0];
    assign S301[1] = S201[1];

    half_adder h301(.A(S201[2]), .B(C201[0]), .S(S301[2]), .CO(C301[0]));
    half_adder h302(.A(S201[3]), .B(C201[1]), .S(S301[3]), .CO(C301[1]));

    full_adder f301(.A(S201[4]), .B(C201[2]), .CI(C202[0]), .S(S301[4]), .CO(C301[2]));
    full_adder f302(.A(S201[5]), .B(C201[3]), .CI(S202[0]), .S(S301[5]), .CO(C301[3])); // S
    full_adder f303(.A(S201[6]), .B(C201[4]), .CI(S202[1]), .S(S301[6]), .CO(C301[4])); // S 
    full_adder f304(.A(S201[7]), .B(C201[5]), .CI(S202[2]), .S(S301[7]), .CO(C301[5])); // S
    full_adder f305(.A(S201[8]), .B(C201[6]), .CI(C202[1]), .S(S301[8]), .CO(C301[6]));
    full_adder f306(.A(S201[9]), .B(C201[7]), .CI(C202[2]), .S(S301[9]), .CO(C301[7]));
    full_adder f307(.A(S201[10]), .B(C201[8]), .CI(C202[3]), .S(S301[10]), .CO(C301[8]));
    full_adder f308(.A(S201[11]), .B(C201[9]), .CI(C202[4]), .S(S301[11]), .CO(C302[3]));

    assign S301[12] = S201[12];
    assign C301[9] = C201[10];
    assign C301[10] = C201[11];

    assign C302[0] = C203[0];
    assign C302[1] = C203[1];
    assign C302[2] = C203[2];

    // firth

    wire [13: 0] S401;
    wire [10: 0] C401;

    assign S401[0] = S301[0];
    assign S401[1] = S301[1];
    assign S401[2] = S301[2];

    half_adder h401(.A(S301[3]), .B(C301[0]), .S(S401[3]), .CO(C401[0]));
    half_adder h402(.A(S301[4]), .B(C301[1]), .S(S401[4]), .CO(C401[1]));
    half_adder h403(.A(S301[5]), .B(C301[2]), .S(S401[5]), .CO(C401[2]));

    full_adder f401(.A(S301[6]), .B(C301[3]), .CI(C302[0]), .S(S401[6]), .CO(C401[3]));
    full_adder f402(.A(S301[7]), .B(C301[4]), .CI(C302[1]), .S(S401[7]), .CO(C401[4]));
    full_adder f403(.A(S301[8]), .B(C301[5]), .CI(C302[2]), .S(S401[8]), .CO(C401[5]));

    half_adder h404(.A(S301[9]), .B(C301[6]), .S(S401[9]), .CO(C401[6]));
    half_adder h405(.A(S301[10]), .B(C301[7]), .S(S401[10]), .CO(C401[7]));
    half_adder h406(.A(S301[11]), .B(C301[8]), .S(S401[11]), .CO(C401[8]));

    full_adder f404(.A(S301[12]), .B(C301[9]), .CI(C302[3]), .S(S401[12]), .CO(C401[9]));

    half_adder h407(.A(w7[7]), .B(C301[10]), .S(S401[13]), .CO(C401[10]));

    // last

    wire [9: 0] carry;
    wire overflow;

    assign x[0] = w0[0];
    assign x[1] = S401[0];
    assign x[2] = S401[1];
    assign x[3] = S401[2];
    assign x[4] = S401[3];

    half_adder h501(.A(S401[4]), .B(C401[0]), .S(x[5]), .CO(carry[0]));

    full_adder f501(.A(S401[5]), .B(C401[1]), .CI(carry[0]), .S(x[6]), .CO(carry[1]));
    full_adder f502(.A(S401[6]), .B(C401[2]), .CI(carry[1]), .S(x[7]), .CO(carry[2]));
    full_adder f503(.A(S401[7]), .B(C401[3]), .CI(carry[2]), .S(x[8]), .CO(carry[3]));
    full_adder f504(.A(S401[8]), .B(C401[4]), .CI(carry[3]), .S(x[9]), .CO(carry[4]));
    full_adder f505(.A(S401[9]), .B(C401[5]), .CI(carry[4]), .S(x[10]), .CO(carry[5]));
    full_adder f506(.A(S401[10]), .B(C401[6]), .CI(carry[5]), .S(x[11]), .CO(carry[6]));
    full_adder f507(.A(S401[11]), .B(C401[7]), .CI(carry[6]), .S(x[12]), .CO(carry[7]));
    full_adder f508(.A(S401[12]), .B(C401[8]), .CI(carry[7]), .S(x[13]), .CO(carry[8]));
    full_adder f509(.A(S401[13]), .B(C401[9]), .CI(carry[8]), .S(x[14]), .CO(carry[9]));

    half_adder h502(.A(carry[9]), .B(C401[10]), .S(x[15]), .CO(overflow));

endmodule
 