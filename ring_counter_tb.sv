module ring_counter_tb;
 
  logic clk, reset;
  logic [3:0] q;
  
  ring_counter dut
  (.clk(clk), .reset(reset), .q(q));
  
  always
    begin
      for(int i=0; i<8; i++)
	    clk = 1'b0;
    	#5;
      	
        clk = 1'b1;
      	#5;
    end
  
  
  initial
    begin
      
      $dumpfile("dump.vcd");
      $dumpvars;
      
      reset = 1'b1;
      #10
      
      reset = 1'b0;
      #200
      
      $stop;
    end
endmodule   
