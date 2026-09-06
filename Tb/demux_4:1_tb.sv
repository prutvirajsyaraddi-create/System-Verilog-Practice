module demuux_tb;
  logic [7:0]d;
  logic [1:0]sel;
  logic [7:0]y0,y1,y2,y3;
  demux_1 uut(
  .d(d),
  .sel(sel),
  .y0(y0),
  .y1(y1),
  .y2(y2),
  .y3(y3)
  );
  initial begin

     $dumpfile("waves.vcd");
    $dumpvars;

    //test case 1
    d=8'd50;
    sel=2'b00;
    #10;
    if(y0==d)
      $display("test case 1 pass:%d",d);
      else
        $display("test case 1 fail");
    ////test case 2
    
        d=8'd100;
    sel=2'b01;
    #10;
    if(y1==d)
      $display("test case 2 pass:%d",d);
      else
        $display("fail");
    //test case 3
    d=8'd10;
    sel=2'b10;
    #10;
    if(y2==d)
      $display("test case 3 pass:%d",d);
      else
        $display("test case 3 fail");
    //test case 4
    d=8'd90;
    sel=2'b11;
    #10;
    if(y3==d)
      $display("test case 4pass:%d",d);
      else
        $display("test case 4 fail");
  end
endmodule
