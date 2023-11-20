`timescale 1ns/1ns

module COUNTER_TB();

  reg clk;
  reg in;
  wire [4:0] out;
  
  COUNTER counter( .clk(clk), .reset(in), .count(out) );
  
  initial begin
    $dumpfile("counter_tb_out.vcd");
    $dumpvars(0, COUNTER_TB);
  end
  
  always #1 clk = ~clk;
  
  initial begin
	clk = 0;
	in = 0;
	
	#1;
	in = 1;
	
	#1;
	in = 0;
	
	#45;
	in = 1;
	
	#5;
	in = 0;
	
	#10;
	$finish;
  end

endmodule