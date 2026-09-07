module decoder_2to4(
  input logic a,b,
  output logic y0,y1,y2,y3);
  always_comb begin
    case({a,b})
      2'b00:begin
        y0=1;
        y1=0;
        y2=0;
        y3=0;
      end
      
      
      2'b01:begin
        y0=0;
        y1=1;
        y2=0;
        y3=0;
      end
      
      2'b10:begin
        y0=0;
        y1=0;
        y2=1;
        y3=0;
      end

      2'b11:begin
        y0=0;
        y1=0;
        y2=0;
        y3=1;
      end
        
    endcase
  end
endmodule
      
