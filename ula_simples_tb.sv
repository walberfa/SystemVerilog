module ula_tb;
  logic [2:0] ctrl;
  logic [7:0] scr0, scr1;
  logic [7:0] result;
  
  ula_simples dut
  (.ctrl(ctrl), .scr0(scr0), .scr1(scr1), .result(result));
  
  initial
    begin
      
      $dumpfile("dump.vcd");
      $dumpvars;
    
      ctrl = 3'b000;
      scr0 = 8'b00000000;
      scr1 = 8'b00000010;
      #200;
      
      ctrl = 3'b000;
      scr0 = 8'b00000001;
      scr1 = 8'b00000010;
      #200;
      
      ctrl = 3'b100;
      scr0 = 8'b00000000;
      scr1 = 8'b00000010;
      #200;
      
      ctrl = 3'b101;
      scr0 = 8'b00000011;
      scr1 = 8'b00000010;
      #200;
      
      ctrl = 3'b110;
      scr0 = 8'b00000010;
      scr1 = 8'b00000110;
      #200;
      
      ctrl = 3'b111;
      scr0 = 8'b00000001;
      scr1 = 8'b00000010;
      #200;
      
      $stop;
    end
endmodule
