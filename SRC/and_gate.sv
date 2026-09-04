module and_gate(
  input a,b,
  output reg y
          );
  always @(*)begin
    y=a&b;
  end
  endmodule
