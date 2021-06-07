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

    parameter STOP_AT = {100};

    //Regitsers and wires
    reg clk;
    reg rst;    
    reg button;
    wire [2:0] colour;
    
    // For telling whether we're counting up or down    
    // reg [3:0] testPhase;

    reg err;

    //Clock generation
    initial begin
        clk = 1'b0;
        forever
            #(CLK_PERIOD/2) clk=~clk;
    end

    //Initial values
    initial begin 
        rst = 0;        
        err = 0;
        button = 1;        
    end

    // Last bit increments
    always @(posedge colour[0]) begin
        if (colour == {111}) begin 
            err = 1;
            $display("***TEST FAILED! That is an illegal state!***");        
        end

        if (colour == STOP_AT) begin
            button = 0;
            #70
            if (colour != STOP_AT) begin
                err = 1;
                $display("***TEST FAILED! When the button is not being pressed, we don't want the lights to be incrementing!***");
            end
            button = 1;
            #70
            if (colour == STOP_AT) begin
                err = 1;
                $display("***TEST FAILED! When the button is being pressed, we want the lights to be incrementing!***");
            end

        end

    end
    
    //Last bit decrements
    always @(negedge colour[0]) begin
        if (colour == {000}) begin
            err = 1;
            $display("***TEST FAILED! That is an illegal state!***");   
        end
    end

    //Finish test, check for success
    initial begin
        #5500
        if (err==0)
            $display("***TEST PASSED! :) ***");
        $finish;
    end

    dynamicLighting top (
        .clk (clk),
	    .rst (rst),
        .button(button),
        .colour(colour)
    );

endmodule