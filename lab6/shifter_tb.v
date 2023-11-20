`timescale 1ns/1ns

module SHIFTER_TB();

  reg clk;
  reg enable;
  reg shift_switch;
  reg [42:0] start_value;
  wire [42:0] out;
  
  SHIFTER shifter( .clk(clk), .enable(enable), .shift_switch(shift_switch), .start_value(start_value), .out_value(out) );
  
  initial begin
    $dumpfile("shifter_tb_out.vcd");
    $dumpvars(0, SHIFTER_TB);
  end
  
  always #1 clk = ~clk;
  
  always #5 shift_switch = ~shift_switch;
  
  initial begin
	clk = 0;
	enable = 0;
	shift_switch = 0;
	start_value = 43'b1001010001;
	
	#2;
	enable = 1;
	
	#15;
	enable = 0;
	
	#5;
	enable = 1;
	
	#5;
	$finish;
  end

endmodule