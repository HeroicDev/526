`timescale 1 ns / 1 ns
module tb_MUX2_1();
	reg A, B, SEL;
	wire OUT;

	MUX2_1 UUT (OUT, A, B, SEL);

	//$vcdpluson;
	//A = 1; B = 1; SEL = 1'bx;
	always 
		begin
			#10 A <= 0;
			#10 A <= 1;
			#10 A <= 1'bx;
			#10 A <= 1'bz;
		end

	always 
		begin
			#20 B <= 0;
			#20 B <= 1;
			#20 B <= 1'bx;
			#20 B <= 1'bz;
		end

	always 
		begin
			#30 SEL <= 0;
			#30 SEL <= 1;
			#30 SEL <= 1'bx;
			#30 SEL <= 1'bz;
		end

	initial
		$monitorb ("%d out = %b a = %b b = %b sel = %b", $time, OUT, A, B, SEL);

	initial begin		
		$vcdpluson;
		#600 $finish;
	end
	
endmodule
