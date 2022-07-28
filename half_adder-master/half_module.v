/*module*/

module half_adder( a,b,sum,carry);

input a;
input b;
output sum; 
output carry;

wire a, b, sum , carry;

assign sum = a^b;
assign carry =a&b;


endmodule
