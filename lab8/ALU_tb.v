`timescale 1ns/1ns

module ALU_TB();

  reg [11:0] a, b;
  reg [2:0] command;
  wire [11:0] res;
  wire [3:0] flags;
  
  ALU alu_sample( .a(a), .b(b), .command(command), .res(res), .flags(flags) );
  
  initial begin
    $dumpfile("alu_tb_out.vcd");
	$dumpvars(0, ALU_TB);  
  end
  
  initial begin
    a = 0;
	b = 0;
	command = 0;
	#400 $finish;
  end  
  
  always #5 begin
    a = a + 1;
	b = b + 2;
  end;
  
  always #20 command = command + 1;
  
endmodule