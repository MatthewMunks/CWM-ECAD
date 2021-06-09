//////////////////////////////////////////////////////////////////////////////////
// Exercise #7 - Lights Selector
// Student Name:
// Date: 
//
//  Description: In this exercise, you need to implement a selector between RGB 
// lights and a white light, coded in RGB. If sel is 0, white light is used. If
//  the sel=1, the coded RGB colour is the output.
//
//  inputs:
//           clk, sel, rst, button
//
//  outputs:
//           light [23:0]
//////////////////////////////////////////////////////////////////////////////////

// Using Ex2 (Multiplex), Ex4 (LEDState), Ex6 (ColSelect)

module lightsSelector (clk, sel, rst, button, light);

    input clk;
    input sel;
    input rst;
    input button;
    output wire [23:0] light;

    parameter white = 24'hFFFFFF;
    
    wire [2:0] colour;
    wire [23:0] rgbOut;

    dynamicLighting LEDState (
        .rst(rst),
        .clk(clk),
        .button(button),
        .colour(colour)
    );

    colourConverter ColSelect (
        .clk(clk),
        .colour(colour),
        .enable(1),
        .rgb(rgbOut)
    );

    multiplexer Multiplex (
        .a(rgbOut),
        .b(white),
        .sel(sel),
        .out(light)
    );

    
endmodule