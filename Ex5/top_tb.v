//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #5 - Air Conditioning
// Student Name:
// Date: 
//
// Description: A testbench module to test Ex5 - Air Conditioning
// You need to write the whole file
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps


`define testState(temperatureToTest, stateCausedByTemperature, errorMessage)    \
    temperature = temperatureToTest;                        \
    #20                                                     \
    if (currentState != stateCausedByTemperature) begin     \
        err = 1;                                            \
        $display("***TEST FAILED! ***");                    \
        $display(``errorMessage);                           \
    end                                                     \
    if (currentState == 'b11) begin                                             \
        err = 1;                                                                \
        $display("***TEST FAILED! The system is in an illegal state***");       \
    end                                                                         \
    #20


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
        err = 0;

        `testState(0, HEATING, "We're at a very low temperature. The system should be heating");
        `testState(17, HEATING, "We're at a very low temperature. The system should be heating");
        `testState(18, HEATING, "We're at a very low temperature. The system should be heating");
        `testState(19, HEATING, "We're passing from a low temperature but still haven't exceeded 20 degrees. Therefore we should still be heating.");
        `testState(20, IDLE, "We're at 20 degrees. We therefore should be simply idling.");
        `testState(22, COOLING, "We're at 22 degrees. We should be cooling.");
        `testState(21, COOLING, "We're passing from a high temperature but haven't exceeded 20 degrees. We should be cooling.");
        `testState(20, IDLE, "We're at 20 degrees. We should be idling.");
        `testState(21, IDLE, "We've gone from 20 degrees to 21. We should be idling.");
        `testState(19, IDLE, "We're at 19 degrees. We should still be idling.");
        `testState(18, HEATING, "We're at 18 degrees. We should be heating.");
        `testState(19, HEATING, "We're at 19 degrees. We should be heating.");
        `testState(20, IDLE, "We're at 20 degrees. We should be idling.");
        `testState(19, IDLE, "We've gone from 20 degrees to 19. We should be idling.");
        
        //There's no path directly from cooling to heating or vice versa. We need to test this separately though. testState is insufficient in this case because it's doing two changes of state at once.
        //Note that the timings here need to be carefully calibrated to line up with when the clock changes
        `testState(25, COOLING, "We're at a very high temperature. We should be cooling.");
        temperature = 15;
        #7
        if (currentState != IDLE) begin     
            err = 1;                                            
            $display("***TEST FAILED! There is no direct path between cooling and heating***");                                                         
        end
        #10
        if (currentState != HEATING) begin     
            err = 1;                                            
            $display("***TEST FAILED! We should now (after two clock ticks) be heating***");                                                         
        end
        //And going the other way...
        `testState(15, HEATING, "We're at a very high temperature. We should be cooling.");
        temperature = 25;
        #10
        if (currentState != IDLE) begin     
            err = 1;                                            
            $display("***TEST FAILED! There is no direct path between cooling and heating***");                                                         
        end
        #10
        if (currentState != COOLING) begin     
            err = 1;                                            
            $display("***TEST FAILED! We should now (after two clock ticks) be cooling***");                                                         
        end

        #100
        //Finish test, check for success
        if (err==0)
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