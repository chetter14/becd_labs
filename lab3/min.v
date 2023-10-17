module MIN_OF_INPUTS
(
	input [9:0] in0, in1, in2, in3,
	output reg [3:0] min
);
    
  always@(*) begin
	min = in0[3:0];
	
	if (min > in1[3:0])
	  min = in1[3:0];
	  
	if (min > in2[3:0])
	  min = in2[3:0];
	  
	if (min > in3[3:0])
	  min = in3[3:0];
  end

endmodule
