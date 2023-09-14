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

  localparam period = 5;

  initial begin
    d0 = 10; d1 = 20; d2 = 30; d3 = 40; d4 = 50; d5 = 60;
    sel = 3'b000;
	
	#period;
	sel = 3'b001;
	
	#period;
	sel = 3'b010;
	
	#period;
	sel = 3'b011;
	
	#period;
	sel = 3'b100;
	
	#period;
	sel = 3'b101;
	
	#period;
	sel = 3'b111;
	
	repeat (2) #period;	
	d0 = 100;
	sel = 3'b000;
	
	#period;
	
	$finish;
  end

endmodule