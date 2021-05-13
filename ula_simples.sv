module ula_simples(
  input logic [2:0] ctrl,
  input logic [7:0] scr0, scr1,
  output logic [7:0] result
);
  
  logic [7:0] sum, diff, inc;
  
  always_comb
  
  begin

   case(ctrl)
      3'b111 : result = scr0 | scr1;
      3'b110 : result = scr0 & scr1;
      3'b101 : result = scr0 - scr1;
      3'b100 : result = scr0 + scr1;
      default: result = scr0 + 1;
    
    endcase
  end
endmodule
