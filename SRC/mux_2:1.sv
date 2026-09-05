module mux_2(
  input logic [3:0]d0,d1,
  input logic sel,
  output logic [3:0]y);
  always_comb begin
  assign y=sel?d1:d0;
  end
endmodule
