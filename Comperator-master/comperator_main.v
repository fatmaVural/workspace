/*Design and simulate a circuit that hastwo2 8 bit inputs 
(A and B) and has two output bits C and D. C is high if if A>B.  D is high if A=B. */

module comperator_main(A,B,C,D);
input [7:0] A;
input [7:0] B;
output C ,D;

wire [7:0] A;     
wire [7:0] B;
reg  C,D;

always@ ( A | B)
begin
  if(A>B)
   begin
   C<=1'b1;
	D<=1'b0;
	end
   else if (A==B)
	begin
   C<=1'b0;
	D<=1'b1;
	end
 else
   begin
   C<=1'b1;
	D<=1'b0;
	end
 
end
endmodule



  