module encoder_4to2_tb;

    logic [3:0] d;
    logic [1:0] y;

    encoder_4to2 uut (
        .d(d),
        .y(y)
    );

    initial begin

        // Test D0
        d = 4'b0001;
        #10;

        if (y == 2'b00)
            $display("PASS: d=%b y=%b", d, y);
        else
            $display("FAIL: d=%b y=%b", d, y);


        // Test D1
        d = 4'b0010;
        #10;

        if (y == 2'b01)
            $display("PASS: d=%b y=%b", d, y);
        else
            $display("FAIL: d=%b y=%b", d, y);


        // Test D2
        d = 4'b0100;
        #10;

        if (y == 2'b10)
            $display("PASS: d=%b y=%b", d, y);
        else
            $display("FAIL: d=%b y=%b", d, y);


        // Test D3
        d = 4'b1000;
        #10;

        if (y == 2'b11)
            $display("PASS: d=%b y=%b", d, y);
        else
            $display("FAIL: d=%b y=%b", d, y);


        $finish;

    end

endmodule
