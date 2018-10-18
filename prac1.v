module circuit(f,a,b,c,d);
	input a,b,c,d;
	output f;
	wire t1,t2;
	assign t1 = a&b;
	assign t2 = ~(c|d);
	assign f = t1^t2;

endmodule

module testbench;
	reg a,b,c,d;
	wire f;
	circuit c1(f,a,b,c,d);

	initial
	begin
		$display ("a	b	c	d	f");
		$monitor ("%b	%b	%b	%b	%b",a,b,c,d,f);
		#5 a=0;b=0;c=0;d=0;
		#5 a=0;b=0;c=0;d=1;
		#5 a=0;b=0;c=1;d=0;
		#5 a=0;b=0;c=1;d=1;
		#5 a=0;b=1;c=0;d=0;
                #5 a=0;b=1;c=0;d=1;
                #5 a=0;b=1;c=1;d=0;
                #5 a=0;b=1;c=1;d=1;
		#5 a=1;b=0;c=0;d=0;
                #5 a=1;b=0;c=0;d=1;
                #5 a=1;b=0;c=1;d=0;
                #5 a=1;b=0;c=1;d=1;
                #5 a=1;b=1;c=0;d=0;
                #5 a=1;b=1;c=0;d=1;
                #5 a=1;b=1;c=1;d=0;
                #5 a=1;b=1;c=1;d=1;
		#5 $finish;
	end
endmodule
