 `timescale 1ns/1ps
 module decoder7segment_testbench();
 
 reg [3:0]A;
 wire [6:0]Y;
 
 decoder7segment_main UUT(.A(A),.Y(Y));
 
 initial
 begin
  A=0;  #10; 
  A=1;  #10;
  A=2;  #10;
  A=3;  #10;
  A=4;  #10;
  A=5;  #10;
  A=6;  #10;
  A=7;  #10;
  A=8;  #10;
  A=9;  #10;
  A=10; #10;
  A=11; #10;
  A=12; #10;
  A=13; #10;
  A=14; #10;
  A=15; #10;$stop;
  //A=4b'1111; #10;$stop;
  end
 endmodule 
 