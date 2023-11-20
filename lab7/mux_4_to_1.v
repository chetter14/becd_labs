module MUX_4_TO_1
(
	input [7:0] d0, d1, d2, d3,
	input [1:0] sel,
	output reg [7:0] result
);
	
  always@(*) begin
	case (sel)
	  2'b00: result <= d0;
	  2'b01: result <= d1;
	  2'b10: result <= d2;
	  2'b11: result <= d3;
	endcase
  end

endmodule
