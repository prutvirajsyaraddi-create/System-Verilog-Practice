module mux_tb;
  logic d0,d1,sel;
  logic y;
  mux_2 uut(
    .d0(d0),
    .d1(d1),
    .sel(sel),
    .y(y)
  );
  initial begin
    d0=0000;
    d1=1111;
    sel=0;
    #10;
    if(y==d0)
      $display("pass:y=0000");
    else
      $display("Fail");
    d0=0000;
    d1=1111;
    sel=1;
    #10;
    if(y==d1)
      $display("pass:y=1111");
    else
      $display("Fail");
  end
endmodule
    
