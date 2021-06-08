//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #5 - Air Conditioning
// Student Name:
// Date: 
//
// Description: A testbench module to test Ex5 - Air Conditioning
// You need to write the whole file
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps


module top_tb();

    parameter CLK_PERIOD = 10;

    reg clk;
    reg [4:0] temperature;
    wire heating;
    wire cooling;
    wire [1:0] currentState = {heating, cooling};

    reg err;

    //Clock generation
    initial begin
        clk = 1'b0;
        forever
            #(CLK_PERIOD/2) clk=~clk;
    end

    //Finish test, check for success
    initial begin
        #1000
        if (testPhase != DONT_STOP)
            $display("***TEST FAILED! The testing did not pass through all the testing phases!***");
        else if (err==0)
            $display("***TEST PASSED! :) ***");
        $finish;
    end

    heaterControl top (
        .clk(clk),
        .temperature(temperature),
        .heating(heating),
        .cooling(cooling)
    );

endmodule