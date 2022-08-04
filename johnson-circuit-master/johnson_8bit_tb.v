`timescale 1ns/1ps
module johnson_8bit_tb();

reg [7:0]A;
reg clk,reset;
wire [6:0]HEX0;
wire [6:0]HEX1;

johnson_8bit UUT(.A(A),.clk(clk),.reset(reset),.HEX0(HEX0),.HEX1(HEX1));
parameter period =20;
always
begin
clk=0; 
#(period/2.0);
clk=1; 
#(period/2.0);
end

initial
begin
reset=1'b1;A=8'b0000_0000;#period;
reset=1'b0;A=8'b0000_0000;#(period*16);
reset=1'b0;A=8'b0001_0000;#(period*16);
reset=1'b0;A=8'b0010_0000;#(period*16);
reset=1'b0;A=8'b0011_0000;#(period*16);
reset=1'b0;A=8'b0100_0000;#(period*16);
reset=1'b0;A=8'b0101_0000;#(period*16);
reset=1'b0;A=8'b0110_0000;#(period*16);
reset=1'b0;A=8'b0111_0000;#(period*16);
reset=1'b0;A=8'b1000_0000;#(period*16);
reset=1'b0;A=8'b1001_0000;#(period*16);
reset=1'b0;A=8'b1010_0000;#(period*16);
reset=1'b0;A=8'b1011_0000;#(period*16);
reset=1'b0;A=8'b1100_0000;#(period*16);
reset=1'b0;A=8'b1101_0000;#(period*16);
reset=1'b0;A=8'b1110_0000;#(period*16);
reset=1'b0;A=8'b1111_0000;#(period*16); $stop;


end


endmodule
