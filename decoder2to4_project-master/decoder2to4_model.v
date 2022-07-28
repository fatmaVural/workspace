module decoder2to4_model (A0,A1,Y0,Y1,Y2,Y3);

input A0,A1;
output Y0,Y1,Y2,Y3;

wire A0,A1,Y0,Y1,Y2,Y3;

assign Y0=(~A0)&(~A1);
assign Y1=(~A0)&(A1);
assign Y2=(A0)&(~A1);
assign Y3=(A0)&(A1);

endmodule
