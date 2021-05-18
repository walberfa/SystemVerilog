module greater_than_tb;
  logic [1:0] a, b;
  logic s;
  
  
  greater_than dut
  (.a(a), .b(b), .s(s));
  
  initial
    begin
      
      $dumpfile("dump.vcd");
      $dumpvars;
    
      a = 2'b00;
      b = 2'b00;
      #200;
      
      a = 2'b01;
      b = 2'b00;
      #200;
      
      a = 2'b10;
      b = 2'b01;
      #200;
      
      a = 2'b10;
      b = 2'b11;
      #200;
      
      
      $stop;
    
    end
endmodule
