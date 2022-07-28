//Design and simulate an 8 bit adder using the ‘+’ operator Testbench

`timescale 1ns/1ps

module fullAd8bit_tb();

reg [7:0] A_tb;
reg [7:0] B_tb;
reg Cin_tb;
wire Cout_tb;
wire [7:0] Sum_tb;

fullAd8bit_main UUT(.A(A_tb),.B(B_tb),.Cin(Cin_tb),.Cout(Cout_tb),.Sum(Sum_tb));

initial
begin
Cin_tb = 1'b0;A_tb = 8'b00000000;B_tb = 8'b00000000; #10;
Cin_tb = 1'b1;A_tb = 8'b00000001;B_tb = 8'b00000001; #10;
Cin_tb = 1'b0;A_tb = 8'b00000010;B_tb = 8'b00000011; #10;
Cin_tb = 1'b0;A_tb = 8'b10000001;B_tb = 8'b10000001; #10;
Cin_tb = 1'b0;A_tb = 8'b00110000;B_tb = 8'b00011001; #10;
Cin_tb = 1'b1;A_tb = 8'b00000011;B_tb = 8'b00000011; #10;
Cin_tb = 1'b1;A_tb = 8'b11111111;B_tb = 8'b00000000; #10;
Cin_tb = 1'b0;A_tb = 8'b11111111;B_tb = 8'b11111111; #10; $stop;


end
endmodule
