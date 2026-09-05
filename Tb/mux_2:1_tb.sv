module mux_tb;
  logic [3:0]d0,d1;
  logic sel;
  logic [3:0]y;
  mux_2 uut(
    .d0(d0),
    .d1(d1),
    .sel(sel),
    .y(y)
  );
  initial begin
    d0=4'b0010;
    d1=4'b1011;
    sel=0;
    #10;
    if(y==d0)
      $display("pass: %b",y);
    else
      $display("Fail");
    d0=4'b0000;
    d1=4'b1111;
    sel=1;
    #10;
    if(y==d1)
      $display("pass: %b",y);
    else
      $display("Fail");
  end
endmodule
    
