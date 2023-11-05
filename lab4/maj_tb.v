`timescale 1ns/1ns

module MAJORITY_17_TB();

  reg [16:0] in;
  wire out;
  
  MAJORITY_17 majority_17( .in(in), .out(out) );
  
  initial begin
    $dumpfile("maj_17_tb_out.vcd");
    $dumpvars(0, MAJORITY_17_TB);
  end

  localparam period = 5;
  
  always #period in = in + 3121;

  initial begin
	in = 0;
	#200;
	$finish;
  end

endmodule