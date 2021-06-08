//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #5 - Air Conditioning
// Student Name:
// Date: 
//
// Description: A testbench module to test Ex5 - Air Conditioning
// You need to write the whole file
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps


'define testState(temperatureToTest, stateCausedByTemperature, errorMessage)    \
    temperature = temperatureToTest;                        \
    #30                                                     \
    if (currentState != HEATING) begin                      \
        err = 1;                                            \
        $display("***TEST FAILED! ``errorMessage.***")      \
    end                                                     \


module top_tb();

    parameter CLK_PERIOD = 10;

    parameter COOLING = 'b01;
    parameter HEATING = 'b10;
    parameter IDLE = 'b00;

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

    //General set of tests.
    initial begin
        testState(0, COOLING, "We're at a very low temperature. The system should be heating")
        // temperature = 0;
        // #30
        // if (currentState != HEATING) begin
        //     err = 1;
        //     $display("***TEST FAILED! We're at a very low temperature. The system should be heating.***")
        // end        
        // temperature = 19;
        // #30
        // if (currentState != HEATING) begin 
        //     err = 1;
        //     $display("***TEST FAILED! We're passing from a low temperature but still haven't exceeded 20 degrees. Therefore we should still be heating.***")
        // end
        // temperature = 20;
        // #30
        // if (currentState != IDLE) begin 
        //     err = 1;
        //     $display("***TEST FAILED! We've hit 20 degrees. We should now be in an idle state.***")
        // end
        // temperature = 22;
        // #30
        // if (currentState != IDLE) begin 
        //     err = 1;
        //     $display("***TEST FAILED! We've hit 20 degrees. We should still be in an idle state.***")
        // end
        // temperature = 23;
        // #30
        // if (currentState != COOLING) begin 
        //     err = 1;
        //     $display("***TEST FAILED! We're now at 23 degrees. We should be cooling.***")
        // end
        // temperature = 21;
        // #30
        // if (currentState != COOLING) begin 
        //     err = 1;
        //     $display("***TEST FAILED! Weshould still be cooling.***")
        // end
        // temperature = 21;
        // #30
        // if (currentState != COOLING) begin 
        //     err = 1;
        //     $display("***TEST FAILED! Weshould still be cooling.***")
        // end
        
    end

    //Finish test, check for success
    initial begin
        #1000
        // if (testPhase != DONT_STOP)
        //     $display("***TEST FAILED! The testing did not pass through all the testing phases!***");
        else if (err==0)
            $display("***TEST PASSED! :) ***");
        $finish;
    end

    always @(posedge clk) begin
        if (currentState == 'b11) begin
            err = 1;
            $display("***TEST FAILED! The system is in an illegal state***");
        end
        
    end

    heaterControl top (
        .clk(clk),
        .temperature(temperature),
        .heating(heating),
        .cooling(cooling)
    );

endmodule