//Linear feedback shift register para 4 bits

module lfsr4
  #(parameter WIDTH = 4)
   (
	input logic clk, reset,
    output logic [WIDTH-1:0] q
    );
  
  logic [WIDTH-1:0] r_reg;
  logic [WIDTH-1:0] r_next;
  logic fb;
  
  always_ff @(posedge clk, posedge reset) 
    
    //register
    begin
      if (reset)
      	r_reg = 4'b0001;
      else if (clk)
        r_reg = r_next;
    end
    
  	//next_state logic
    assign fb = r_reg[1] ^ r_reg[0];
  assign r_next = {fb, r_reg[WIDTH-1:1]};
  
  	//output logic
  	assign q = r_reg;
  
endmodule
