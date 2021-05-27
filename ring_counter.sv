module ring_counter
  #(parameter WIDTH = 4)
   (
	input logic clk, reset,
    output logic [WIDTH-1:0] q
    );
  
  logic [WIDTH-1:0] r_reg;
  logic [WIDTH-1:0] r_next;
  
  always_ff @(posedge clk, posedge reset) 
    
    begin
	//register
      if (reset)
      	r_reg = 4'b1000;
      else if (clk)
        r_reg = r_next;
    end
	
      //next_state logic
  	assign r_next = r_reg[0] & r_reg[WIDTH-1:1];
     
      //output logic
  	assign q = r_reg;
  
endmodule
