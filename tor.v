module testbench;
	reg a,b;
	wire x;
	simple_or r(x,a,b);
	
	initial
	begin
		$dumpfile ("ortor.vcd");
		$dumpvars (0,testbench);
		$monitor ($time,"A = %b		B = %b		x = %b",a,b,x);
		#5 a=0;b=0;
		#5 a=0;b=1;
		#5 a=1;b=0;
		#5 a=1;b=1;
		#5 $finish;
	end
endmodule	
