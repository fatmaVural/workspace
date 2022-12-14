//Design and simulate a decoder for 7 segment display.

module decoder7segment_main(A,Y);

input [3:0]A;
output [6:0]Y;

wire [3:0]A;
reg [6:0]Y;

always @(A) 
begin
 case (A)
  4'b0000 :      	
   Y = 7'b1111110;   //assign Y0=(~A0)&(~A1)&(~A2)&(~A3);
  4'b0001 :    		
   Y = 7'b0110000  ;
  4'b0010 :  		
   Y = 7'b1101101 ; 
  4'b0011 : 		
   Y = 7'b1111001 ;
  4'b0100 :		
   Y = 7'b0110011 ;
  4'b0101 :		
   Y = 7'b1011011 ;  
  4'b0110 :		
   Y = 7'b1011111 ;
  4'b0111 :		
   Y = 7'b1110000;
  4'b1000 :     		 
   Y = 7'b1111111;
  4'b1001 :    		
   Y = 7'b1111011 ;
  4'b1010 :  		
   Y = 7'b1110111 ; 
  4'b1011 : 		
   Y = 7'b0011111;
  4'b1100 :		
   Y = 7'b1001110 ;
  4'b1101 :		         
   Y = 7'b0111101 ;
  4'b1110 :		         
   Y = 7'b1001111 ;
  4'b1111 :		       
   Y = 7'b1000111 ;
 endcase 
end
endmodule 