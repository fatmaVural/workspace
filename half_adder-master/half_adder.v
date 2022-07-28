/* maın */


module half_main
(

input a1,
input b1,
output sum1,
output carry1);

wire internal1;
wire internal2;
wire internal3;
wire internal4;

 half_adder half1( 
	.a(a1),.b(b1),.sum(internal1),.carry(internal2));


 half_adder half2( 
	.a(a1),.b(b1),.sum(internal3),.carry(internal4));

assign sum1 = internal1 & internal3;
assign carry1 = internal2 & internal4;

	
endmodule 