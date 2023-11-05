`timescale 1ns/1ns

module DECODER_3_TO_5_TB();

  wire d0, d1, d2, d3, d4;
  reg [2:0] in;
  
  DECODER_3_TO_5 decoder( .in(in), .d0(d0), .d1(d1), .d2(d2), .d3(d3), .d4(d4) );
  
  initial begin
    $dumpfile("dec_tb_out.vcd");
    $dumpvars(0, DECODER_3_TO_5_TB);
  end

  always #1 in = in + 1;

  initial begin
	in = 3'b000;
	#16;
	$finish;
  end

endmodule