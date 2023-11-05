`timescale 1ns/1ns

module MUX_6_TO_1_TB();

  reg [7:0] d0, d1, d2, d3, d4, d5;
  reg [2:0] sel;
  wire [7:0] res;
  
  MUX_6_TO_1 mux( .d0(d0), .d1(d1), .d2(d2), .d3(d3), .d4(d4), .d5(d5), .sel(sel), .res(res) );
  
  initial begin
    $dumpfile("mux_tb_out.vcd");
    $dumpvars(0, MUX_6_TO_1_TB);
  end

  initial begin
    d0 = 10; d1 = 20; d2 = 30; d3 = 40; d4 = 50; d5 = 60;
    sel = 3'b000;
  end  
  
  always #1 sel = sel + 1;
  
  initial begin
	#5;
	d0 = 100;
	d2 = 33;
  end
  
  initial begin
	#16; $finish;
  end

endmodule