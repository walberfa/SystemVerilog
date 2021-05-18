module greater_than (
  input logic [1:0] a, b,
  output logic s
);
  
  logic p0, p1, p2;
  
  begin
    
    assign p0 = a[1] & !b[1];
    assign p1 = a[0] & !b[1] & !b[0];
    assign p2 = a[1] & a[0] & !b[0];
	
   assign s = p0 | p1 | p2;
  
  end

endmodule
