`timescale 1ns/1ns

module DECODER_3_TO_5_TB();

  wire d0, d1, d2, d3, d4;
  reg [2:0] in;
  
  DECODER_3_TO_5 decoder( .in(in), .d0(d0), .d1(d1), .d2(d2), .d3(d3), .d4(d4) );
  
  initial begin
    $dumpfile("dec_tb_out.vcd");
    $dumpvars(0, DECODER_3_TO_5_TB);
  end

  localparam period = 5;

  initial begin
	repeat (2) begin 
		in = 3'b000;
		
		#period;
		in = 3'b001;
		
		#period;
		in = 3'b010;
		
		#period;
		in = 3'b011;
		
		#period;
		in = 3'b100;
		
		#period;
		in = 3'b101;
		
		#period;
	end
	
	$finish;
  end

endmodule