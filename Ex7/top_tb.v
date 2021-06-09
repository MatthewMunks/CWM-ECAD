//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #7 - Lights Selector
// Student Name:
// Date: 
//
// Description: A testbench module to test Ex7 - Lights Selector
// You need to write the whole file
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

// No time to execute
//Leaving timed stuff for the next iteration
`define testOutputVal(expexting, errorMessage)  \
    if (light != expexting) begin               \
        err = 1;                                \
        $display("***TEST FAILED! ***");        \
        $display(``errorMessage);               \    
    end

module top_tb ();
    
    parameter CLK_PERIOD = 10;

    reg clk;
    reg rst;
    reg sel;
    reg button;
    wire light [23:0];

    reg err;

    //Clock generation
    initial begin
        clk = 1'b0;
        forever
            #(CLK_PERIOD/2) clk=~clk;
    end

    initial begin
        rst = 1;
        sel = 0;
        button = 0;

        #50
        //rst == 1 => colour = 1 => light = mem.coe[1]
        `testOutputVal(24'h0000FF, "When in reset mode, the colour should corresond to mem.coe[1]")
        
        #50
        button = 1;
        
        #300
        button = 0;

        #300
        button = 1;
        sel = 1;


        #300 
        button = 0;


        #50
        
        //Finish test, check for success
        if (err==0)
            $display("***TEST PASSED! :) ***");
        $finish;
    end

    lightsSelector top (
        .clk(clk),
        .sel(sel),
        .rst(rst),
        .button(button),
        .light(light)
    );

endmodule