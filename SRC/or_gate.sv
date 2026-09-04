module or_gate(
  input a,b,
  output logic y
);
  always @(*)begin
    y=a|b;
  end
endmodule
