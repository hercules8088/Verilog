module full_adder(s,c_out,a,b,c);
	input a,b,c;
	output s,c_out;

	xor R(s,a,b^c);
	or R(c_out,a&b,b&c,a&c);

endmodule

module add3(c_out,s,c_in,x,y);
	
	input [2:0] x,y;
	input c_in;
	output [2:0] s;
	output c_out;
	wire [1:0] c;
	
	full_adder a1(s[0],c[0],x[0],y[0],c_in);
	full_adder a2(s[1],c[1],x[1],y[1],c[0]);
	full_adder a3(s[2],c_out,x[2],y[2],c[1]);

endmodule

module testbench;
	reg c_in;
	reg [2:0] x,y;
	wire c_out;
	wire [2:0] s;
	add3 a1(c_out,s,c_in,x,y);

	initial
	begin
		$monitor ("%b%b%b + %b%b%b = %b%b%b%b",x[2],x[1],x[0],y[2],y[1],y[0],c_out,s[2],s[1],s[0]);
		#5 x[0]=0;x[1]=1;x[2]=1;y[0]=1;y[1]=0;y[2]=1;c_in=0;
		#5 $finish;
	end
endmodule
