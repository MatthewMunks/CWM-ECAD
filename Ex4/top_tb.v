//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #4 - Dynamic LED lights
// Student Name:
// Date: 
//
// Description: A testbench module to test Ex4 - Dynamic LED lights
// You need to write the whole file
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

module top_tb();

    parameter CLK_PERIOD = 10;

    //Regitsers and wires
    reg clk;
    reg rst;    
    reg button;
    wire [2:0] colour;
    
    // For telling whether we're counting up or down    
    reg [3:0] testPhase;

    reg err;

    //Clock generation
    initial
    begin
        clk = 1'b0;
        forever
            #(CLK_PERIOD/2) clk=~clk;
    end

    initial begin 
        rst = 0;        
        err = 0;
        testPhase = COUNT_UP;
    end

    dynamicLighting top (
        .clk (clk),
	    .rst (rst),
        .button(button),
        .colour(colour)
    );

endmodule