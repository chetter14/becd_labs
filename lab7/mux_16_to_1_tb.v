`timescale 1ns/1ns

module MUX_16_TO_1_TB();

  reg [7:0] d0, d1, d2, d3, d4, d5, d6, d7, d8, d9, d10, d11, d12, d13, d14, d15;
  reg [3:0] sel;
  wire [7:0] res;
  
  MUX_16_TO_1 mux( .d0(d0), .d1(d1), .d2(d2), .d3(d3), .d4(d4), .d5(d5), .d6(d6), .d7(d7), .d8(d8), .d9(d9), .d10(d10), .d11(d11), .d12(d12), .d13(d13), .d14(d14), .d15(d15), .sel(sel), .result(res) );
  
  initial begin
    $dumpfile("mux_16_to_1_tb_out.vcd");
    $dumpvars(0, MUX_16_TO_1_TB);
  end

  initial begin
    d0 = 0; d1 = 10; d2 = 20; d3 = 30; 
	d4 = 40; d5 = 50; d6 = 60; d7 = 70; 
	d8 = 80; d9 = 90; d10 = 100; d11 = 110; 
	d12 = 120; d13 = 130; d14 = 140; d15 = 150;
    sel = 3'b000;
  end  
  
  always #1 sel = sel + 1;
  
  initial begin
	#10;
	d0 = 77;
	d2 = 33;
  end
  
  initial begin
	#40; $finish;
  end

endmodule