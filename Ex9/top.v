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
module top(clk, rst_n, sysOn, sleep, atmospheric, lightsOn, temperature, heating, cooling);
    // input clk_p;
    // input clk_n;

    input rst_n;
    
    // input temperature_0;
    // input temperature_1;
    // input temperature_2;
    // input temperature_3;
    // input temperature_4;

    input [4:0] temperature;
    // wire [4:0] temperature = {temperature_4, temperature_3, temperature_2, temperature_1, temperature_0};
    
    output heating;
    output cooling;
    

    /* clock infrastructure, do not modify */
    // wire clk_ibufds;        //Goes between IBUFDS_sysclk and bufg_clk

    // IBUFDS IBUFDS_sysclk (
    //     .I(clk_p),
    //     .IB(clk_n),
    //     .O(clk_ibufds)
    // );

    // wire clk; //use this signal as a clock for your design
        
    // BUFG bufg_clk (
	//     .I  (clk_ibufds),
	//     .O  (clk)
    // );

//Add logic here
    heaterControl AirConditioning (
        .clk(clk),
        .temperature(temperature),
        .heating(heating),
        .cooling(cooling),
        .sysOn(sysOn)
    );


endmodule
