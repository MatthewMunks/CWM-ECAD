//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #8  - Simple End-to-End Design
// Student Name:
// Date: 
//
// Description: A testbench module to test Ex8
// You need to write the whole file
//////////////////////////////////////////////////////////////////////////////////

//#region testing the lights (basic functionality)
// No time to execute
//Leaving timed stuff for the next iteration
`define testLightOutputVal(expexting, errorMessage)  \
    ff = ~ff;\
    if (lightOut_rgb != expexting) begin               \
        err = 1;                                \
        $display("***TEST FAILED! ***");        \
        $display(``errorMessage);               \
    end
    

`define testingLightsTiming                                                                                                                             \
    #((threshold+1)*CLK_PERIOD)                                                                                                                         \
    `testLightOutputVal(24'h00FF00, "We're moving through the sequence. The colours should be changing as per the sequence. Should be (00FF00)");       \
    #((threshold+1)*CLK_PERIOD)                                                                                                                         \
    `testLightOutputVal(24'h00FFFF, "We're moving through the sequence. The colours should be changing as per the sequence. Should be (00FFFF)");       \
    #((threshold+1)*CLK_PERIOD)                                                                                                                         \
    `testLightOutputVal(24'hFF0000, "We're moving through the sequence. The colours should be changing as per the sequence. Should be (FF0000)");       \
    #((threshold+1)*CLK_PERIOD)                                                                                                                         \
    `testLightOutputVal(24'hFF00FF, "We're moving through the sequence. The colours should be changing as per the sequence. Should be (FF00FF)");       \
    #((threshold+1)*CLK_PERIOD)                                                                                                                         \
    `testLightOutputVal(24'hFFFF00, "We're moving through the sequence. The colours should be changing as per the sequence. Should be (FFFF00)");       \
    #((threshold+1)*CLK_PERIOD)                                                                                                                         \
    `testLightOutputVal(24'h0000FF, "We're moving through the sequence. The colours should be changing as per the sequence. Should be (0000FF)");       \


`define encapsulatingLightsTesting                                                                                                                  \
    #50     //Takes 3 clock ticks for stuff to pass through the memory module                                                                       \
    //rst == 1 => colour = 1 => lightOut_rgb = mem.coe[1]                                                                                           \
    `testLightOutputVal(24'h0000FF, "When in reset mode, the colour should corresond to mem.coe[1]");                                               \
    rst = 0;                                                                                                                                        \
    #50                                                                                                                                             \
    `testLightOutputVal(24'h0000FF, "Button is not pressed so we should not be changing!");                                                         \
                                                                                                                                                    \
    #50                                                                                                                                             \
    button = 1;                                                                                                                                     \
    `testingLightsTiming                                                                                                                            \
    threshold = 20;     //Checking that it's threshold that's changing the timing.                                                                  \
    `testingLightsTiming                                                                                                                            \
    //       threshold = 50;     //Checking that it's threshold that's changing the timing.                                                         \
    //       `testingLightsTiming                                                                                                                   \
                                                                                                                                                    \
    button = 0;                                                                                                                                     \
    //Wait for change to come into effect                                                                                                           \
    #(8*CLK_PERIOD)                                                                                                                                 \
    lightStoreState = lightOut_rgb;                                                                                                                 \
    //Testing twice just in case 8*CLK_PERIOD happens to coincide with the state on the second loop. (Delayed response)                             \
    #(8*CLK_PERIOD)                                                                                                                                 \
    `testLightOutputVal(lightStoreState, "The button is not pressed so the system should not keep changing");                                       \
    #CLK_PERIOD                                                                                                                                     \
    `testLightOutputVal(lightStoreState, "The button is not pressed so the system should not keep changing");                                       \
                                                                                                                                                    \
                                                                                                                                                    \
    button = 1;                                                                                                                                     \
    lightsSel = 0;                                                                                                                                  \
    #(3*CLK_PERIOD)                                                                                                                                 \
    `testLightOutputVal(24'hFFFFFF, "Sel should be blocking any changes through the system, no matter what value button takes.");                   \
                                                                                                                                                    \
    #(3*CLK_PERIOD)                                                                                                                                 \
    button = 0;                                                                                                                                     \
    `testLightOutputVal(24'hFFFFFF, "Sel should be blocking any changes through the system, no matter what value button takes.");                   \
    #(5*CLK_PERIOD)                                                                                                                                 \
                                                                                                                                                    \
    //lightsSel acts on a level above that of rst                                                                                                   \
    rst = 1;                                                                                                                                        \
    #50                                                                                                                                             \
    `testLightOutputVal(24'hFFFFFF, "The output is still controlled by the multiplexer!");                                                          \
    button = 1;                                                                                                                                     \
    #50                                                                                                                                             \
    `testLightOutputVal(24'hFFFFFF, "The output is still controlled by the multiplexer!");                                                          \
    lightsSel = 1;                                                                                                                                  \
    #50                                                                                                                                             \
    `testLightOutputVal(24'h0000FF, "When in reset mode, the colour should corresond to mem.coe[1]");
//#endregion

//#region testing the air conditioning system (basic functionality)
`define testHeaterState(temperatureToTest, stateCausedByTemperature, errorMessage)    \
    temperature = temperatureToTest;                                            \
    #20                                                                         \
    if (currentState != stateCausedByTemperature) begin                         \
        err = 1;                                                                \
        $display("***TEST FAILED! ***");                                        \
        $display(``errorMessage);                                               \
    end                                                                         \
    if (currentState == 'b11) begin                                             \
        err = 1;                                                                \
        $display("***TEST FAILED! The system is in an illegal state***");       \
    end                                                                         \
    #20
                                                                                                                                                                                                                     
`define rudimentaryHeaterTests()                                                                                                                                                                                     \
    `testHeaterState(0, HEATING, "We're at a very low temperature. The system should be heating");                                                                                                                   \
    `testHeaterState(17, HEATING, "We're at a very low temperature. The system should be heating");                                                                                                                  \
    `testHeaterState(18, HEATING, "We're at a very low temperature. The system should be heating");                                                                                                                  \
    `testHeaterState(19, HEATING, "We're passing from a low temperature but still haven't exceeded 20 degrees. Therefore we should still be heating.");                                                              \
    `testHeaterState(20, IDLE, "We're at 20 degrees. We therefore should be simply idling.");                                                                                                                        \
    `testHeaterState(22, COOLING, "We're at 22 degrees. We should be cooling.");                                                                                                                                     \
    `testHeaterState(21, COOLING, "We're passing from a high temperature but haven't exceeded 20 degrees. We should be cooling.");                                                                                   \
    `testHeaterState(20, IDLE, "We're at 20 degrees. We should be idling.");                                                                                                                                         \
    `testHeaterState(21, IDLE, "We've gone from 20 degrees to 21. We should be idling.");                                                                                                                            \
    `testHeaterState(19, IDLE, "We're at 19 degrees. We should still be idling.");                                                                                                                                   \
    `testHeaterState(18, HEATING, "We're at 18 degrees. We should be heating.");                                                                                                                                     \
    `testHeaterState(19, HEATING, "We're at 19 degrees. We should be heating.");                                                                                                                                     \
    `testHeaterState(20, IDLE, "We're at 20 degrees. We should be idling.");                                                                                                                                         \
    `testHeaterState(19, IDLE, "We've gone from 20 degrees to 19. We should be idling.");                                                                                                                            \
                                                                                                                                                                                                                     \
    //There's no path directly from cooling to heating or vice versa. We need to test this separately though. testHeaterState is insufficient in this case because it's doing two changes of state at once.          \
    //Note that the timings here need to be carefully calibrated to line up with when the clock changes                                                                                                              \
    `testHeaterState(25, COOLING, "We're at a very high temperature. We should be cooling.");                                                                                                                        \
    temperature = 15;                                                                                                                                                                                                \
    #7                                                                                                                                                                                                               \
    if (currentState != IDLE) begin                                                                                                                                                                                  \
        err = 1;                                                                                                                                                                                                     \
        $display("***TEST FAILED! There is no direct path between cooling and heating***");                                                                                                                          \
    end                                                                                                                                                                                                              \
    #10                                                                                                                                                                                                              \
    if (currentState != HEATING) begin                                                                                                                                                                               \
        err = 1;                                                                                                                                                                                                     \
        $display("***TEST FAILED! We should now (after two clock ticks) be heating***");                                                                                                                             \
    end                                                                                                                                                                                                              \
    //And going the other way...                                                                                                                                                                                     \
    `testHeaterState(15, HEATING, "We're at a very high temperature. We should be cooling.");                                                                                                                        \
    temperature = 25;                                                                                                                                                                                                \
    #10                                                                                                                                                                                                              \
    if (currentState != IDLE) begin                                                                                                                                                                                  \
        err = 1;                                                                                                                                                                                                     \
        $display("***TEST FAILED! There is no direct path between cooling and heating***");                                                                                                                          \
    end                                                                                                                                                                                                              \
    #10                                                                                                                                                                                                              \
    if (currentState != COOLING) begin                                                                                                                                                                               \
        err = 1;                                                                                                                                                                                                     \
        $display("***TEST FAILED! We should now (after two clock ticks) be cooling***");                                                                                                                             \
    end
//#endregion

module top_tb ();
    
    parameter CLK_PERIOD = 10;
        
    parameter COOLING = 'b01;
    parameter HEATING = 'b10;
    parameter IDLE = 'b00;

    reg clk;
    reg rst;
    reg lightsSel;
    reg button;
    reg sysOn;  // system on 
    wire [23:0] lightOut_rgb;
    reg [23:0] lightStoreState; 
    reg sleep;
    reg atmospheric;
    reg [4:0] temperature;
    reg [5:0] threshold;

    reg err;
    reg ff;

    wire heating;
    wire cooling;
    wire [1:0] currentState = {heating, cooling};

    //Clock generation
    initial begin
        clk = 1'b0;
        forever
            #(CLK_PERIOD/2) clk=~clk;
    end

    initial begin
        err = 0;
        rst = 1;
        lightsSel = 1;
        button = 0;
        sysOn = 1;
        sleep = 0;
        atmospheric = 0;
        temperature = 20;
        threshold = 10;
        ff = 0;
        
        //There are 4 main states to test, as well as that of rst.
        // {lightsSel, button} \in {00,01,10,11}
        // Note that lightsSel acts on a level above that of rst. (Important)         
        `encapsulatingLightsTesting

        `rudimentaryHeaterTests
        
        //with atmospheric at 1, we want the lights to be in a dimmed state. This tests that.
        atmospheric = 1;
        rst = 1;
        button = 0;
        #50;
        rst = 0;
        #50;
        button = 1;
        #((threshold+1)*CLK_PERIOD)                                                                                                                         
        `testLightOutputVal(24'h008800, "We're moving through the sequence. The colours should be changing as per the sequence. Should be (00FF00)");       
        #((threshold+1)*CLK_PERIOD)                                                                                                                         
        `testLightOutputVal(24'h008888, "We're moving through the sequence. The colours should be changing as per the sequence. Should be (00FFFF)");       
        #((threshold+1)*CLK_PERIOD)                                                                                                                         
        `testLightOutputVal(24'h880000, "We're moving through the sequence. The colours should be changing as per the sequence. Should be (FF0000)");       
        #((threshold+1)*CLK_PERIOD)                                                                                                                         
        `testLightOutputVal(24'h880088, "We're moving through the sequence. The colours should be changing as per the sequence. Should be (FF00FF)");       
        #((threshold+1)*CLK_PERIOD)                                                                                                                         
        `testLightOutputVal(24'h888800, "We're moving through the sequence. The colours should be changing as per the sequence. Should be (FFFF00)");       
        #((threshold+1)*CLK_PERIOD)                                                                                                                         
        `testLightOutputVal(24'h000088, "We're moving through the sequence. The colours should be changing as per the sequence. Should be (0000FF)");
        
        
        sleep = 1;
        #50;
        `testLightOutputVal(0, "We're sleeping. The lights should be off");
        `testHeaterState(25, COOLING, "We're sleeping but the air con should still be in operation");
        `testHeaterState(20, IDLE, "We're sleeping but the air con should still be in operation");
        `testHeaterState(17, HEATING, "We're sleeping but the air con should still be in operation"); 
        #50
        
        sysOn = 0;
        #50
        `testLightOutputVal(0, "The system is off. The lights should be off");
        `testHeaterState(25, IDLE, "The system is off. We should not be heating or cooling!");
        `testHeaterState(20, IDLE, "The system is off. We should not be heating or cooling!");
        `testHeaterState(17, IDLE, "The system is off. We should not be heating or cooling!");
        #50 

                      
        
        //Finish test, check for success
        if (err==0)
            $display("***TEST PASSED! :) ***");
        $finish;
    end

    top LowerTop (
        .clk(clk),
        .rst_n(rst),
        .sysOn(sysOn),
        .sleep(sleep),
        .atmospheric(atmospheric),
        .temperature(temperature),
        .heating(heating),
        .cooling(cooling),
        .button(button),
        .lightsSel(lightsSel),
        .lightsOut(lightOut_rgb),
        .threshold(threshold)
    );

endmodule