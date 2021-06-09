//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #6 - RGB Colour Converter
// Student Name:
// Date: 
//
// Description: A testbench module to test Ex6 - RGB Colour Converter
// You need to write the whole file
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

`define testState(colourIn, expectedOutput, errorMessage)   \
    colour = colourIn;                                      \
    #40                                                     \
    if (rgbOut != expectedOutput) begin                     \
        err = 1;                                            \
        $display("***TEST FAILED! ***");                    \
        $display(``errorMessage);                           \
    end                                                     \
    #50 

module top_tb ();

    parameter CLK_PERIOD = 10;

    reg clk;
    reg [2:0] colour;
    reg enable;
    reg err;

    wire [23:0] rgbOut;
    
    //When enable=1, we need some way of telling what the previous state was.
    reg [23:0] rgbSnapshotState;

    //Clock generation
    initial begin
        clk = 1'b0;
        forever
            #(CLK_PERIOD/2) clk=~clk;
    end

    initial begin
        err = 0;
        enable = 1;
        
        //Values taken directly from mem.coe
        `testState(0, 24'h000000, "Output is incorrect");
        `testState(1, 24'h0000FF, "Output is incorrect");
        `testState(2, 24'h00FF00, "Output is incorrect");
        `testState(3, 24'h00FFFF, "Output is incorrect");
        `testState(4, 24'hFF0000, "Output is incorrect");
        `testState(5, 24'hFF00FF, "Output is incorrect");
        `testState(6, 24'hFFFF00, "Output is incorrect");
        `testState(7, 24'hFFFFFF, "Output is incorrect");
        
        rgbSnapshotState = rgbOut;
        
        //When enable == 0, then changing the input has no effect on the output.
        enable = 0;        
        `testState(3, rgbSnapshotState, "Output should not change");        
        `testState(5, rgbSnapshotState, "Output should not change");
        
        enable = 1;
        `testState(6, 24'hFFFF00, "Output should be changing again");
        `testState(2, 24'h00FF00, "Output should be changing again");
        
        #50
        
        //Finish test, check for success
        if (err==0)
            $display("***TEST PASSED! :) ***");
        $finish;

        
    end

    colourConverter top (
        .clk(clk),
        .enable(enable),
        .colour(colour),
        .rgb(rgbOut)
    );

endmodule
