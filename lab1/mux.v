module MUX_6_TO_1
(
	input [7:0] d0, d1, d2, d3, d4, d5,
	input [2:0] sel,
	output reg [7:0] res
);

  always@(*) begin
    case (sel)
	  3'b000: res <= d0;
	  3'b001: res <= d1;
	  3'b010: res <= d2;
	  3'b011: res <= d3;
	  3'b100: res <= d4;
	  3'b101: res <= d5;
	  default: res <= 8'bzzzz_zzzz;
	endcase
  end

endmodule