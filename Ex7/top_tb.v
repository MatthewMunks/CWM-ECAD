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
    wire [23:0] light;
    reg [23:0] lightStoreState; 

    reg err;

    //Clock generation
    initial begin
        clk = 1'b0;
        forever
            #(CLK_PERIOD/2) clk=~clk;
    end

    initial begin
        err = 0;
        rst = 1;
        sel = 0;
        button = 0;

        #50     //Takes 3 clock ticks for stuff to pass through the memory module
        //rst == 1 => colour = 1 => light = mem.coe[1]
        `testOutputVal(24'h0000FF, "When in reset mode, the colour should corresond to mem.coe[1]");
        rst = 0;     
        #50
        `testOutputVal(24'h0000FF, "Button is not pressed so we should not be changing!");
        
        #50
        button = 1;
        #(4*CLK_PERIOD)
        `testOutputVal(24'h00FF00, "We're moving through the sequence. The colours should be changing as per the sequence.");
        #CLK_PERIOD
        `testOutputVal(24'h00FFFF, "We're moving through the sequence. The colours should be changing as per the sequence.");
        #CLK_PERIOD
        `testOutputVal(24'hFF0000, "We're moving through the sequence. The colours should be changing as per the sequence.");
        #CLK_PERIOD
        `testOutputVal(24'hFF00FF, "We're moving through the sequence. The colours should be changing as per the sequence.");
        #CLK_PERIOD
        `testOutputVal(24'hFFFF00, "We're moving through the sequence. The colours should be changing as per the sequence.");
        #CLK_PERIOD
        `testOutputVal(24'h0000FF, "We're moving through the sequence. The colours should be changing as per the sequence.");
        #(3*CLK_PERIOD)
        
        button = 0;
        //Wait for change to come into effect
        #(8*CLK_PERIOD)
        lightStoreState = light;
        //Testing twice just in case 8*CLK_PERIOD happens to coincide with the state on the second loop. (Delayed response)
        #(8*CLK_PERIOD)
        `testOutputVal(lightStoreState, "The button is not pressed so the system should not keep changing");
        #CLK_PERIOD
        `testOutputVal(lightStoreState, "The button is not pressed so the system should not keep changing");
                       

        #300
        button = 1;
        sel = 1;
        #(3*CLK_PERIOD)
        `testOutputVal(24'hFFFFFF, "Sel should be blocking any changes through the system, no matter what value button takes.");

        #(3*CLK_PERIOD) 
        button = 0;
        `testOutputVal(24'hFFFFFF, "Sel should be blocking any changes through the system, no matter what value button takes.");

        #(3*CLK_PERIOD)
        
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