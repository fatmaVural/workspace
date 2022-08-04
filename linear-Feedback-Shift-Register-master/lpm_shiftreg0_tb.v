`timescale 1ns/1ps
module lpm_shiftreg0_tb();
wire [15:0]q;
reg sclr, clock, shiftin;

lpm_shiftreg0 UUT(.sclr(sclr), .clock(clock), .shiftin(shiftin), .q(q));
parameter period = 20;

always
begin
clock = 0; #(period/2.0);
clock = 1; #(period/2.0);
end

initial 
begin
sclr=1'b1; shiftin = 1'b0; #period;
sclr=1'b0; shiftin = 1'b1; #(period*16);
shiftin = 1'b0; #(period*16); $stop;
end
endmodule
