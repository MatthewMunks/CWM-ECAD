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

    reg [2:0] STOP_AT = 4;
    
    //TestPhases
    parameter STOP_AT_4 = 1;
    parameter STOP_AT_3 = 2;
    parameter DONT_STOP = 3;    

    //Regitsers and wires
    reg clk;
    reg rst;    
    reg button;    
    wire [2:0] colour;
    reg [2:0] colourPrevState;
    
    reg [2:0] testPhase;
    
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
        rst = 1;        
        err = 0;
        button = 1;
        testPhase = STOP_AT_4;
        colourPrevState = 0;

        #50
        if (colour != 'b001) begin
            err = 1;
            $display("***TEST FAILED! We're in reset mode!***");   
        end
        rst = 0;
        #50
        if (colour == 'b001) begin
            err = 1;
            $display("***TEST FAILED! Colour should be changing!***");   
        end
    end
    initial begin
        #(CLK_PERIOD/2)
        forever begin
            #CLK_PERIOD
            if (colour == 'b111 || colour == 'b000) begin 
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
                
                if (testPhase == STOP_AT_4) begin
                    STOP_AT = 3;
                    testPhase = STOP_AT_3;
                end else if (testPhase == STOP_AT_3) begin
                    STOP_AT = 0;    //Illegal state and so should never be triggered!
                    testPhase = DONT_STOP;
                    
                    #100 //Testing Reset again
                    rst = 1;
                    #5
                    if (colour != 1) begin
                        err = 1;
                        $display("***TEST FAILED! Reset should reset the value***");
                    end
                    #70
                    if (colour != 1) begin
                        err = 1;
                        $display("***TEST FAILED! Reset should reset the value***");
                    end
                    rst = 0;
                    #30
                    if (colour == 1) begin
                        err = 1;
                        $display("***TEST FAILED! Reset is now off and so colour should be increasing again***");
                    end
                    
                end
            
            end
        end
    end
    
    // always @(posedge clk) begin
    //     if (colour == 'b111 || colour == 'b000) begin 
    //         err = 1;
    //         $display("***TEST FAILED! That is an illegal state!***");        
    //     end       

    //     if (colour == STOP_AT) begin
    //         button = 0;
    //         #70
    //         if (colour != STOP_AT) begin
    //             err = 1;
    //             $display("***TEST FAILED! When the button is not being pressed, we don't want the lights to be incrementing!***");
    //         end
    //         button = 1;
    //         #70
    //         if (colour == STOP_AT) begin
    //             err = 1;
    //             $display("***TEST FAILED! When the button is being pressed, we want the lights to be incrementing!***");
    //         end
            
    //         if (testPhase == STOP_AT_4) begin
    //             STOP_AT = 3;
    //             testPhase = STOP_AT_3;
    //         end else if (testPhase == STOP_AT_3) begin
    //             STOP_AT = 0;    //Illegal state and so should never be triggered!
    //             testPhase = DONT_STOP;
                
    //             #100 //Testing Reset again
    //             rst = 1;
    //             #5
    //             if (colour != 1) begin
    //                 err = 1;
    //                 $display("***TEST FAILED! Reset should reset the value***");
    //             end
    //             #70
    //             if (colour != 1) begin
    //                 err = 1;
    //                 $display("***TEST FAILED! Reset should reset the value***");
    //             end
    //             rst = 0;
    //             #30
    //             if (colour == 1) begin
    //                 err = 1;
    //                 $display("***TEST FAILED! Reset is now off and so colour should be increasing again***");
    //             end
                
    //         end
            

    //     end

    // end    

    initial begin
        #(CLK_PERIOD/2)
        forever begin
            if (button == 1 && rst == 0 && testPhase != DONT_STOP) begin
                if (~(colour == colourPrevState + 1 || (colour == 1 && colourPrevState == 6))) begin 
                    err = 1;
                    $display("***TEST FAILED! Colour is not incremenmting***"); 
                end
                colourPrevState = colour;
            end
        end
    end

    //Not a race condition because we're not updating the same variable (bar err and that only gets set to 1, and so doesn't create a race condition)
    // always @(posedge clk) begin
    //     //Testing incrementation of colour
    //     //Once we're in the DONT_STOP phase, this section fails when the reset comes off because both colour and colourPrevState are in state 1. 
    //     //We've already tested the incrementation post rst=0 so we don't really need to test it again.
    //     if (button == 1 && rst == 0 && testPhase != DONT_STOP) begin
    //         if (~(colour == colourPrevState + 1 || (colour == 1 && colourPrevState == 6))) begin 
    //             err = 1;
    //             $display("***TEST FAILED! Colour is not incremenmting***"); 
    //         end
    //         colourPrevState = colour;
    //     end
    // end

    //Finish test, check for success
    initial begin
        #1000
        if (testPhase != DONT_STOP)
            $display("***TEST FAILED! The testing did not pass through all the testing phases!***");
        else if (err==0)
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