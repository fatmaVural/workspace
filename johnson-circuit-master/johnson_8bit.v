module johnson_8bit(A,clk,reset,HEX0,HEX1);
input [7:0]A;
input clk,reset;
output [6:0]HEX0;
output [6:0]HEX1;

wire [7:0]A;
wire clk,reset;
reg [6:0]HEX0;
reg [6:0]HEX1;
reg [7:0]B;
reg [7:0]C;
reg [7:0]D;


wire [7:0]Y;
wire [3:0]Y0;
wire [3:0]Y1;
wire [8:0]sum1;
wire [8:0]sum2;
wire [9:0]sum3;
wire [9:0]average;
wire [9:0]tmp;


always @(posedge clk)
begin
 if(reset)
   B <= 8'b0000_0000;
 else
   B <= A;
end

assign sum1 = (A + B);

always @(posedge clk)
begin
 if(reset)
   C <= 8'b0000_0000;
 else
   C <= B;
end

always @(posedge clk)
begin
 if(reset)
   D <= 8'b0000_0000;
 else
   D <= C;
end

assign sum2 = (C + D);

assign sum3 = (sum1 + sum2);
assign tmp = (sum3 + 10'b00_0000_0010); //rouding
assign average = tmp[9:2];              //truncation
assign Y = average[7:0];
assign Y0= Y[3:0];
assign Y1= Y[7:4];

always @(Y0)
 begin
  case(Y0)
  4'b0000 : HEX0 = 7'b1000000;   //0
  4'b0001 : HEX0 = 7'b1111001;   //1
  4'b0010 : HEX0 = 7'b0100100;   //2
  4'b0011 : HEX0 = 7'b0110000;   //3
  4'b0100 : HEX0 = 7'b0011001;   //4
  4'b0101 : HEX0 = 7'b0010010;   //5
  4'b0110 : HEX0 = 7'b0000010;   //6
  4'b0111 : HEX0 = 7'b1011000;   //7
  4'b1000 : HEX0 = 7'b0000000;   //8
  4'b1001 : HEX0 = 7'b0010000;   //9
  /*4'b1010 : HEX0 = 7'b0001000;   //A
  4'b1011 : HEX0 = 7'b0000011;   //b
  4'b1100 : HEX0 = 7'b1000110;   //C
  4'b1101 : HEX0 = 7'b0100001;   //d
  4'b1110 : HEX0 = 7'b0000110;   //E
  4'b1111 : HEX0 = 7'b0001110;   //F*/
  endcase 
 end
 
 always @(Y1)
 begin
  case(Y1)
  4'b0000 : HEX1 = 7'b1000000;   //0
  4'b0001 : HEX1 = 7'b1111001;   //1
  4'b0010 : HEX1 = 7'b0100100;   //2
  4'b0011 : HEX1 = 7'b0110000;   //3
  4'b0100 : HEX1 = 7'b0011001;   //4
  4'b0101 : HEX1 = 7'b0010010;   //5
  4'b0110 : HEX1 = 7'b0000010;   //6
  4'b0111 : HEX1 = 7'b1011000;   //7
  4'b1000 : HEX1 = 7'b0000000;   //8
  4'b1001 : HEX1 = 7'b0010000;   //9
  /*4'b1010 : HEX1 = 7'b0001000;   //A
  4'b1011 : HEX1 = 7'b0000011;   //b
  4'b1100 : HEX1 = 7'b1000110;   //C
  4'b1101 : HEX1 = 7'b0100001;   //d
  4'b1110 : HEX1 = 7'b0000110;   //E
  4'b1111 : HEX1 = 7'b0001110;   //F*/
  endcase 
 end



endmodule


