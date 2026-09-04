module dut;
  reg a,b;
  reg y;
  xor_gate uut(a,b,y);
  integer i;

  initial begin

    for (i=0;i<4;i=i+1) begin
      {a,b}=i;
       #10;

      $display("%b %b %b",a,b,y);
          end

  end
endmodule
