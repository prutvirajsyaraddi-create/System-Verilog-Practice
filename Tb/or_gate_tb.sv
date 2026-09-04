module dut;
  reg a;
  reg b;
  wire y;
  or_gate uut(
    .a(a),
    .b(b),
    .y(y)
  );
 
  
    initial begin
      a=0; b=0;
      a=0; b=1;
      a=1; b=0;
      a=1; b=1;
  
      
      $display("%b %b %b",a,b,y);

    end 
    endmodule


  
