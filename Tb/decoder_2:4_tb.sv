module decoder_tb;
  logic a,b;
  logic y0,y1,y2,y3;
  decoder_2to4 uut(
  .a(a),
  .b(b),
  .y0(y0),
  .y1(y1),
  .y2(y2),
  .y3(y3)
  );
  initial begin
    //test case 1
    {a,b}=2'b00;
    #10;
    if (y0==1'b1)
      $display("test case pass1:%b %b %b %b",y0,y1,y2,y3);
  //test case 2  
    {a,b}=2'b01;
    #10;
         if (y1==1'b1)
           $display("test case pass2:%b %b %b %b",y0,y1,y2,y3);
    //test case 3
    {a,b}=2'b10;
    #10;
         if (y2==1'b1)
           $display("test case pass3:%b %b %b %b",y0,y1,y2,y3);
    //test case 4
    {a,b}=2'b11;
    #10;
         if (y3==1'b1)
           $display("test case pass4:%b %b %b %b",y0,y1,y2,y3);
  end 
endmodule
    
