module or_and(a,b,c,x);
	input a,b,c;
	output x;

	assign x = a & b|c;
endmodule

module testbench;
	reg a,b,c;
	wire x;
	or_and a1(a,b,c,x);

	initial
	begin
		$monitor("a = %b  b = %b  c = %b  x = %b",a,b,c,x);
		#5 a=0;b=1;c=1;
		#5 $finish;
	end
endmodule 
