module full_adder(s,c,x,y,z);
	input x,y,z;
	output s,c;

	assign s = x^(y^z);
	assign c = x&y | y&z | x&z;
endmodule

module testbench;
	reg x,y,z;
	wire s,c;
	full_adder f(s,c,x,y,z);

	initial
	begin
		$dumpfile ("full_adder.vcd");
		$dumpvars (0,testbench);
		$monitor ($time,"X = %b   Y = %b  Z = %b  Sum = %b  Carry = %b",x,y,z,s,c);
		#5 x=0;y=0;z=0;
		#5 x=0;y=0;z=1;
		#5 x=0;y=1;z=0;
		#5 x=0;y=1;z=1;
		#5 x=1;y=0;z=0;
		#5 x=1;y=0;z=1;
		#5 x=1;y=1;z=0;
		#5 x=1;y=1;z=1;
		#5 $finish;
	end
endmodule
