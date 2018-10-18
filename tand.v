module testbench;
	reg x,y;
	wire f;
	simpleand dut(f,x,y);

	initial
	  begin
		  	$dumpfile ("andtand.vcd");
			$dumpvars (0,testbench);
			$monitor ($time,"A = %b,B = %b,Y = %b",x,y,f);
			#5 x=0;y=0;
			#5 x=0;y=1;
			#5 x=1;y=0;
			#5 x=1;y=1;
			#5 $finish;
	  end
endmodule
