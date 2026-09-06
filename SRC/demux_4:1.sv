module demux_4-1(
  input logic [7:0]d,
  input logic [1:0]sel,
  output logic [7:0]y0,y1,y2,y3);
  always_comb begin
      y0=0;
      y1=0;
      y2=0;
      y3=0;
    case(sel)
      
      2'b00:y0=d;
      2'b01:y1=d;
      2'b10:y2=d;
      2'b11:y3=d;
    endcase
      end
      endmodule
