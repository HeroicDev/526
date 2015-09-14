`timescale 1 ns / 1 ns
module MUX2_1(OUT, A, B, SEL);
//port declaration
	output OUT;
	input A, B, SEL;

//internal variables 
	wire A1, B1, SEL_N;

//the netlist
	not(SEL_N, SEL);
	and(A1, A, SEL_N);
	and(B1, B, SEL);
	or(OUT, A1, B1);
endmodule
