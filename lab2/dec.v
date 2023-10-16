module DECODER_3_TO_5
(
	input [2:0] in,
	output reg d0, d1, d2, d3, d4
);

  always@(*) begin
    d0 <= 0;
	d1 <= 0;
	d2 <= 0;
	d3 <= 0;
	d4 <= 0;
	
    case (in)
	  3'b000: d0 <= 1;
	  3'b001: d1 <= 1;
	  3'b010: d2 <= 1;
	  3'b011: d3 <= 1;
	  3'b100: d4 <= 1;
	endcase
  end

endmodule