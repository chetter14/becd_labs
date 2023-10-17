`timescale 1ns/1ns

module MIN_OF_INPUTS_TB();

  reg [9:0] in0, in1, in2, in3;
  wire [3:0] min;
  
  MIN_OF_INPUTS min_of_inputs( .in0(in0), .in1(in1), .in2(in2), .in3(in3), .min(min) );
  
  initial begin
    $dumpfile("min_tb_out.vcd");
    $dumpvars(0, MIN_OF_INPUTS_TB);
  end

  localparam period = 5;

  initial begin
  
    in0 = 10'b00_0000_0001;
	in1 = 10'b00_1111_0010;
	in2 = 10'b10_1010_0100;
	in3 = 10'b00_0101_1000;
	
	repeat (2) #period;
	
	in0 = 10'b00_0000_1000;
	in1 = 10'b00_1111_1001;
	in2 = 10'b10_1010_0010;
	in3 = 10'b00_0101_0100;
	
	repeat (2) #period;
		
	$finish;
  end

endmodule