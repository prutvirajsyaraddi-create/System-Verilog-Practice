module mux_2(
  input logic d0,d1,sel,
  output logic y);
  always_comb begin
  assign y=sel?d1:d0;
  end
endmodule
