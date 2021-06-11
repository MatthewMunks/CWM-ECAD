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

//clk_p, clk_n

module metaTop(
    clk_p, clk_n,
    rst_n, sysOn, sleep, atmospheric,
    temperature_0, temperature_1, temperature_2, temperature_3, temperature_4,
    heating, cooling, button, lightsSel, 
    lightsOut_R0, lightsOut_R1, lightsOut_R2, lightsOut_R3, 
    lightsOut_R4, lightsOut_R5, lightsOut_R6, lightsOut_R7,
    lightsOut_G0, lightsOut_G1, lightsOut_G2, lightsOut_G3, 
    lightsOut_G4, lightsOut_G5, lightsOut_G6, lightsOut_G7,
    lightsOut_B0, lightsOut_B1, lightsOut_B2, lightsOut_B3, 
    lightsOut_B4, lightsOut_B5, lightsOut_B6, lightsOut_B7,
    threshold_0, threshold_1, threshold_2, threshold_3, threshold_4, threshold_5
    );

    input clk_p, clk_n;   
    reg clk; 

    input rst_n, sysOn, sleep, atmospheric;


    input temperature_0, temperature_1, temperature_2, temperature_3, temperature_4;
    wire [4:0] temperature = {temperature_4, temperature_3, temperature_2, temperature_1, temperature_0};

    output heating, cooling;

    input button, lightsSel;

    output lightsOut_R0, lightsOut_R1, lightsOut_R2, lightsOut_R3; 
    output lightsOut_R4, lightsOut_R5, lightsOut_R6, lightsOut_R7;
    wire [7:0] red = {lightsOut_R7, lightsOut_R6, lightsOut_R5, lightsOut_R4, lightsOut_R3, lightsOut_R2, lightsOut_R1, lightsOut_R0};
    output lightsOut_G0, lightsOut_G1, lightsOut_G2, lightsOut_G3; 
    output lightsOut_G4, lightsOut_G5, lightsOut_G6, lightsOut_G7;
    wire [7:0] green = {lightsOut_G7, lightsOut_G6, lightsOut_G5, lightsOut_G4, lightsOut_G3,lightsOut_G2, lightsOut_G1, lightsOut_G0}
    output lightsOut_B0, lightsOut_B1, lightsOut_B2, lightsOut_B3; 
    output lightsOut_B4, lightsOut_B5, lightsOut_B6, lightsOut_B7;
    wire [7:0] blue = {lightsOut_B7, lightsOut_B6, lightsOut_B5, lightsOut_B4, lightsOut_B3, lightsOut_B2, lightsOut_B1, lightsOut_B0}

    wire [23:0] lightOut_rgb = {red, blue, green};

    input threshold_0, threshold_1, threshold_2, threshold_3, threshold_4, threshold_5;
    wire [5:0] threshold = {threshold_5, threshold_4, threshold_3, threshold_2, threshold_1, threshold_0}

    /* clock infrastructure, do not modify */
    wire clk_ibufds;        //Goes between IBUFDS_sysclk and bufg_clk

    IBUFDS IBUFDS_sysclk (
        .I(clk_p),
        .IB(clk_n),
        .O(clk_ibufds)
    );

    wire clk; //use this signal as a clock for your design
        
    BUFG bufg_clk (
	    .I  (clk_ibufds),
	    .O  (clk)
    );

    top top (
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
