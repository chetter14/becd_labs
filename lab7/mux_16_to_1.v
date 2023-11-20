module MUX_16_TO_1
(
	input [7:0] d0, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, d12, d13, d14, d15,
	input [3:0] sel,
	output [7:0] result
);
	
  wire [7:0] g1_out, g2_out, g3_out, g4_out;
	
  MUX_4_TO_1 gate1( .d0(d0), .d1(d1), .d2(d2), .d3(d3), .sel(sel[1:0]), .result(g1_out) );
  
  MUX_4_TO_1 gate2( .d0(d4), .d1(d5), .d2(d6), .d3(d7), .sel(sel[1:0]), .result(g2_out) );
  
  MUX_4_TO_1 gate3( .d0(d8), .d1(d9), .d2(d10), .d3(d11), .sel(sel[1:0]), .result(g3_out) );
  
  MUX_4_TO_1 gate4( .d0(d12), .d1(d13), .d2(d14), .d3(d15), .sel(sel[1:0]), .result(g4_out) );
  
  MUX_4_TO_1 final_gate( .d0(g1_out), .d1(g2_out), .d2(g3_out), .d3(g4_out), .sel(sel[3:2]), .result(result) );

endmodule
