/*test bench*/
`timescale 1ns/1ps

module half_adder_test();//testbench içi boş olmalı bu önemli

reg a_tb;//sadece inputlar için kullanılır
reg b_tb;
wire sum_tb; //outputlar için kullanılır,
wire carry_tb;

half_main UUT (.a1(a_tb),
					.b1(b_tb),
					.sum1(sum_tb),
					.carry1(carry_tb)
				  );

initial 
begin
a_tb = 1'b0;
b_tb = 1'b0; #100;
a_tb = 1'b1;
b_tb = 1'b0; #100;
a_tb = 1'b0;
b_tb = 1'b1; #100;
a_tb = 1'b1;
b_tb = 1'b1; #100;$stop;
end
endmodule
