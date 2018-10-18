module simple_counter(clk,rst,count);
	input clk,rst;
	output [5:0] count;
	reg count;

	always @(posedge clk)
	begin
	 if(rst)
		count = 6'b0;
	 else
		count = count + 1;
	end
 

endmodule

module testbench;
	reg clk,rst;
	wire [5:0] count;
	simple_counter dut(clk,rst,count);

	initial
	begin
		$dumpfile ("couter.vcd");
		$dumpvars (0,testbench);
		$monitor ($time,"clk = %b   rst = %b   count = %b",clk,rst,count);
		#5 clk=0;rst=1;
		#5 clk=1;rst=1;
		#5 clk=0;rst=0;
		#5 clk=1;
		#5 clk=0;
		#5 clk=1;
                #5 clk=0;
		#5 clk=1;
                #5 clk=0;
                #5 clk=1;
                #5 clk=0;
		#5 clk=1;
                #5 clk=0;
                #5 clk=1;
                #5 clk=0;
                #5 clk=1;
                #5 clk=0;
                #5 clk=1;
                #5 clk=0;
		#5 clk=1;
                #5 clk=0;
                #5 clk=1;
                #5 clk=0;
                #5 clk=1;
                #5 clk=0;
                #5 clk=1;
                #5 clk=0;
                #5 clk=1;
                #5 clk=0;
                #5 clk=1;
                #5 clk=0;
                #5 clk=1;
                #5 clk=0;
                #5 clk=1;
                #5 clk=0;
		#5 clk=1;
                #5 clk=0;
                #5 clk=1;
                #5 clk=0;
                #5 clk=1;
                #5 clk=0;
                #5 clk=1;
                #5 clk=0;
                #5 clk=1;
                #5 clk=0;
                #5 clk=1;
                #5 clk=0;
                #5 clk=1;
                #5 clk=0;
                #5 clk=1;
                #5 clk=0;
                #5 clk=1;
                #5 clk=0;
                #5 clk=1;
                #5 clk=0;
                #5 clk=1;
                #5 clk=0;
                #5 clk=1;
                #5 clk=0;
                #5 clk=1;
                #5 clk=0;
                #5 clk=1;
                #5 clk=0;
                #5 clk=1;
                #5 clk=0;
                #5 clk=1;
                #5 clk=0;
		#5 clk=0;
                #5 clk=1;
                #5 clk=0;
                #5 clk=1;
                #5 clk=0;
                #5 clk=1;
                #5 clk=0;
                #5 clk=1;
                #5 clk=0;
                #5 clk=1;
                #5 clk=0;
                #5 clk=1;
                #5 clk=0;
                #5 clk=1;
                #5 clk=0;
                #5 clk=1;
                #5 clk=0;
                #5 clk=1;
                #5 clk=0;
                #5 clk=1;
                #5 clk=0;
                #5 clk=1;
                #5 clk=0;
                #5 clk=1;
                #5 clk=0;
                #5 clk=1;
                #5 clk=0;
                #5 clk=1;
                #5 clk=0;
                #5 clk=1;
                #5 clk=0;
                #5 clk=1;
                #5 clk=0;
		#5 $finish;	
	end	
endmodule
