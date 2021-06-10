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


module top(clk_p, clk_n,
    //Todo: add all other ports besides clk_n and clk_p 
    rst_n, heating, cooling, temperature_0, temperature_1, temperature_2, temperature_3, temperature_4
    );
    input clk_p;
    input clk_n;

    input rst_n;

    input [4:0] temperature = {temperature_0, temperature_1, temperature_2, temperature_3, temperature_4};
    output heating;
    output cooling;
    

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

//Add logic here
    heaterControl airconditioning(
        .clk(clk),
        .temperature(temperature),
        .heating(heating),
        .cooling(cooling)
    );


endmodule
