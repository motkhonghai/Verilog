module counter_tb;
    // khai bao cac chan dao vao
    reg clk, rst;
    wire [3:0] count;

    // goi module 
    counter uuf (
        .clk(clk),
        .rst(rst),
        .count(count)
    );


    // khoi tao xung nhip clk
    always #5 clk = ~clk;

    // khoi tao cac tin hieu
    initial begin
        // khoi tao cac gia tri ban dau
        clk = 0; rst = 0; 

        // kich hoat reset
        #10 rst = 1;
        #10 rst = 0;

        #100;

        // kich hoat reset
        #10 rst = 1;
        #10 rst = 0;

        #90;

        #20;


    end 

        initial begin
            $monitor("Thoi gian: %0t | clk: %b | rst: %b | count: %b", $time, clk, rst, count);
        end
endmodule