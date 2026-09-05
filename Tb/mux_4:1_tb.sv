module mux_tb;
  logic [3:0]d0,d1,d2,d3;
  logic [1:0]sel;
  logic [3:0]y;
  mux_4 uut(
    .d0(d0),
    .d1(d1),
    .d2(d2),
    .d3(d3),
    .sel(sel),
    .y(y)
  );
  initial begin
    d0=4'b0110;
    d1=4'b1011;
    d2=4'b0010;
    d3=4'b1010;
    
    //testd0
    sel=2'b00;
    #10;
    if(y==d0)
      $display("pass: %b", y);
    else $display("fail");
    //testd1
    sel=2'b01;
    #10;
    if(y==d1)
      $display("pass: %b", y);
    else $display("fail");
    sel=2'b10;
    #10;
    if(y==d2)
      $display("pass: %b", y);
    else $display("fail");
    sel=2'b11;
    #10;
    if(y==d3)
      $display("pass: %b", y);
    else $display("fail");
    
  end 
endmodule
