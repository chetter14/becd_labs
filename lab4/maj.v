module MAJORITY_17
(
	input [16:0] in,
	output reg out
);
    
  reg [4:0] true_counter;
  integer i;
	
  always@(*) begin
	
	true_counter = 0;
	
	for (i = 0; i < 17; i = i + 1) begin		// count all the 1s in input
	  if (in[i] == 1'b1)
	    true_counter = true_counter + 1;
	end
	
	if (true_counter > 8)
	  out = 1;
	else
	  out = 0;
	
  end

endmodule
