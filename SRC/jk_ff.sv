module jk(
input logic clk,
input logic reset,
input logic j,k,
output logic q
);
  always_ff @(posedge clk or posedge reset)begin
    if(reset)
      q<=0;
    else
      case({j,k})
      2'b00:q<=q;
      2'b01:q<=2'b0;
      2'b10:q<=2'b1;
      2'b11:q<=~q;
    endcase
  end
endmodule
