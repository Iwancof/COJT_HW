module ripple_adder
  (
   input  [3:0] A,
   input  [3:0] B,
   output [4:0] X
   );

   wire [2:0] co;

   half_adder ha0 (.A(A[0]), .B(B[0]), .S(X[0]), .CO(co[0]));
   full_adder fa1 (.A(A[1]), .B(B[1]), .CI(co[0]), .S(X[1]), .CO(co[1]));
   full_adder fa2 (.A(A[2]), .B(B[2]), .CI(co[1]), .S(X[2]), .CO(co[2]));
   full_adder fa3 (.A(A[3]), .B(B[3]), .CI(co[2]), .S(X[3]), .CO(X[4]));

endmodule // ripple_adder
