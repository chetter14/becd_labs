module COUNTER
(
	input clk,
	input reset,
	output reg [4:0] count
);
	
  always@(posedge clk or posedge reset) begin
	
	if (reset)				// Reset
	  count <= 17;
	else if (count == 0)		// Enable signal
	  count <= 17;
	else
	  count <= count - 1;
	
  end

endmodule
