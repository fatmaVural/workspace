`timescale 1ns/1ps
module decoder2to4_tb();

reg[1:0]A;
wire[3:0]Y;

main UUT(.A0_m(A[0]),.A1_m(A[1]),
         .Y0_m(Y[0]),.Y1_m(Y[1]),
		   .Y2_m(Y[2]),.Y3_m(Y[3]));//The name you write after module is important
							
initial
begin
A=2'b00;#500;
A=2'b01;#500;
A=2'b10;#500;
A=2'b11;#500;$stop;
end
endmodule
							