// Simulating AND e OR in a single circuit using LUT 2
module LUT2_tb;
  logic O, O1, I0, I1, I2;
  
  // instantiating the module to map connections 4'b0101
  LUT2 #(.INIT(4'b1000)) LUT2_AND( .I0(I0), .I1(I1), .O(O) );
  LUT2 #(.INIT(4'b1110)) LUT2_OR( .I0(O), .I1(I2), .O(O1) );
  
  initial
    begin
      
      $dumpfile("dump.vcd");
      $dumpvars;
      
      
      I2 = 1'b0;
      I1 = 1'b0;
      I0 = 1'b0;

      #5
      I2 = 1'b1;
      I1 = 1'b0;
      I0 = 1'b1;    
      
      #5
      I2 = 1'b0;
      I1 = 1'b1;
      I0 = 1'b0;
      
      #5
      I2 = 1'b1;
      I1 = 1'b1;
      I0 = 1'b1;
      
      #5
      I2 = 1'b0;
      I1 = 1'b0;
      I0 = 1'b0;
      
      #5
      I2 = 1'b1;
      I1 = 1'b0;
      I0 = 1'b1;
      
      #5
      I2 = 1'b1;
      I1 = 1'b1;
      I0 = 1'b0;
      
      #5
      I2 = 1'b1;
      I1 = 1'b1;
      I0 = 1'b1;
      
      #5;
    end
  
    initial
    begin
      $display("                Tempo   Entradas LUT    Saidas");
      $display("                         IO    I1    I2     AND   OR");
      $display("                ====   ================  ==========");
      $monitor($time,"     %b      %b    %b      %b    %b", I0, I1, I2, O, O1);
    end
  
endmodule
