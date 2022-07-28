//Design and simulate an 8 bit adder using the ‘+’ operator

module fullAd8bit_main (A,B,Cin,Cout,Sum);

input [7:0] A;
input [7:0] B;
input Cin;
output Cout;
output[7:0] Sum;

wire [7:0] A;
wire [7:0] B;
wire Cin;
wire Cout;
wire [7:0] Sum;

assign {Cout,Sum}  = A+B+Cin;


/*
wire C0,C1,C2,C3,C4,C5,C6,C7;

assign C0 = Cin;

assign C1 = (A[0] & B[0]) | (C0 &(A[0] ^ B[0]));
assign Sum[0] = (A[0] ^ B[0] ^ C0);

assign C2 = (A[1] & B[1]) | (C1 &(A[1] ^ B[1]));
assign Sum[1] = (A[1] ^ B[1] ^ C1);

assign C3 = (A[2] & B[2]) | (C2 &(A[2] ^ B[2]));
assign Sum[2] = (A[2] ^ B[2] ^ C2);

assign C4 = (A[3] & B[3]) | (C3 &(A[3] ^ B[3]));
assign Sum[3] = (A[3] ^ B[3] ^ C3);

assign C5 = (A[4] & B[4]) | (C4 &(A[4] ^ B[4]));
assign Sum[4] = (A[4] ^ B[4] ^ C4);

assign C6 = (A[5] & B[5]) | (C5 &(A[5] ^ B[5]));
assign Sum[5] = (A[5] ^ B[5] ^ C5);

assign C7 = (A[6] & B[6]) | (C6 &(A[6] ^ B[6]));
assign Sum[6] = (A[6] ^ B[6] ^ C6);

assign Cout = (A[7] & B[7]) | (C7 &(A[7] ^ B[7]));
assign Sum[7] = (A[7] ^ B[7] ^ C7);
*/
endmodule


