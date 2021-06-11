//////////////////////////////////////////////////////////////////////////////////
// Exercise #8  - Simple End-to-End Design
// Student Name:
// Date: 
//
//  Description: In this exercise, you need to design an air conditioning systems
//
//  inputs:
//           rst_n, clk_n, clk_p, temperature [4:0]
//
//  outputs:
//           heating, cooling
//////////////////////////////////////////////////////////////////////////////////


// clk               - clock
// rst_n             - reset
// sysOn             - turning the system on.
// sleep             - Sleep mode. (heater on but lights off.)
// atmospheric       - triggers the atmospheric light mode.
// temperature       - temperatuer input
// heating / cooling - output of the heating and cooling stuff
// button            - When held, the lights are in motion
// lightsSel         - Triggers the multiplexer within the lights system. (Triggers white light)
// lightsOut         - output of the light system (rgb)
// threshold         - The threshold for lights changing within the lights system
module top(clk, rst_n, sysOn, sleep, atmospheric, 
    temperature, heating, cooling, button, lightsSel, lightsOut, threshold);

    input clk;
    input rst_n;
    input sysOn;
    input sleep;
    input atmospheric;
    input button;
    input lightsSel;
    
    input [5:0] threshold;

    input [4:0] temperature;    
    
    output heating;
    output cooling;
    output wire [23:0] lightsOut;
        

//Add logic here
    heaterControl AirConditioning (
        .clk(clk),
        .temperature(temperature),
        .heating(heating),
        .cooling(cooling),
        .sysOn(sysOn)
    );

    lightsSelector lightsSystem (
        .rst(rst_n),
        .clk(clk),
        .button(button),
        .sel(lightsSel),
        .light(lightsOut),
        .threshold(threshold),
        .sysOn(sysOn && ~sleep),
        .dimLights(atmospheric)
    );


endmodule
