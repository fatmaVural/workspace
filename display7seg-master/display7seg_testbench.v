//testbench
`timescale 1ns/1ps

module display7seg_testbench();

reg [3:0] A_tb;
wire [6:0]Y_tb;

display7seg_main UTT(.A(A_tb),.Y(Y_tb));

initial
begin

A_tb = 4'b0000;#10;
A_tb = 4'b0001;#10;
A_tb = 4'b0010;#10;
A_tb = 4'b0011;#10;
A_tb = 4'b0100;#10;
A_tb = 4'b0101;#10;
A_tb = 4'b0110;#10;
A_tb = 4'b0111;#10;
A_tb = 4'b1000;#10;
A_tb = 4'b1001;#10;
A_tb = 4'b1010;#10;
A_tb = 4'b1011;#10;
A_tb = 4'b1100;#10;
A_tb = 4'b1101;#10;
A_tb = 4'b1110;#10;
A_tb = 4'b1111;#10;$stop;

end

endmodule
