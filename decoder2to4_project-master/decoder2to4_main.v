/*main*/
module main(input A0_m,A1_m,output Y0_m,Y1_m,Y2_m,Y3_m);


decoder2to4_model deco1(.A0(A0_m),.A1(A1_m),
                         .Y0(Y0_m),.Y1(Y1_m),
								 .Y2(Y2_m),.Y3(Y3_m));
								 
endmodule								 