module ALU
(
	input [11:0] a, b, 
	input [2:0] command,
	output [11:0] res,
	output reg [3:0] flags
);
	
  reg [11:0] result;
  reg [11:0] l_b;				// local b 
	
  always @(a, b, command) begin
	
	flags = 4'b0000;
	
	case (command)
	  'd0: 						// addition
	    begin
		  result = a + b;		
		  flags[0] = (a[11] == 1 && b[11] == 1 && result[11] == 0) || (a[11] == 0 && b[11] == 0 && result[11] == 1);
		end
	  'd1: 						// subtraction
	    begin
		  l_b = ~b + 1'b1;		// convert to negative
		  result = a + l_b;		
		  flags[0] = (a[11] == 1 && b[11] == 1 && result[11] == 0) || (a[11] == 0 && b[11] == 0 && result[11] == 1);
		end
	  'd2: result = a * b;		// multiplication
	  'd3: result = a / b;		// division
	  'd4: result = a & b;		// Logical AND
	  'd5: result = a | b;		// Logical OR
	  'd6: result = ~a & b;		// ~A&B
	  'd7: result = ~a | b;		// ~A|B
	endcase
	
	if (result == 0) 
	  flags[3] = 1;				// Zero flag
	  
	if (result[0] == 0)
	  flags[2] = 1;				// Parity flag
	  
	flags[1] = result[11];	  	// Sign flag
	
  end
  
  assign res = result[11:0];

endmodule
