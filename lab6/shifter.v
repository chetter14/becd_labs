module SHIFTER
(
	input clk,
	input enable,
	input shift_switch,
	input [42:0] start_value,
	output reg [42:0] out_value
);
	
  always@(posedge clk) begin
	
	if (enable == 0)				// Reset
	  out_value <= start_value;
	else begin						// Enable signal
	  if (shift_switch == 1)	
	    out_value <= out_value >> 3;	// right
	  else 
	    out_value <= out_value << 1;	// left
	end
	
  end

endmodule
