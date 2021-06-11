//////////////////////////////////////////////////////////////////////////////////
// Exercise #6 - RGB Colour Converter
// Student Name:
// Date: 
//
//
//  Description: In this exercise, you need to design a memory with 8 entries, 
//  converting colours to their RGB code.
//
//  inputs:
//           clk, colour [2:0], enable
//
//  outputs:
//           rgb [23:0]
//
//////////////////////////////////////////////////////////////////////////////////

//ColourLookUp your_instance_name (
//  .clka(clka),    // input wire clka
//  .ena(ena),      // input wire ena
//  .wea(wea),      // input wire [0 : 0] wea
//  .addra(addra),  // input wire [2 : 0] addra
//  .dina(dina),    // input wire [23 : 0] dina
//  .douta(douta)  // output wire [23 : 0] douta
//);

`timescale 1ns / 100ps

`define dimRGBVal(index, mappingTo)                 \
    if (lookupOut[8*index +: 8] == 8'hFF) begin     \
        rgb[8*index +: 8] <= mappingTo;             \
    end else begin                                  \
        rgb[8*index +: 8] <= 0;                     \
    end

`define dimRGB              \
    `dimRGBVal(0, 8'h88);   \
    `dimRGBVal(1, 8'h88);   \
    `dimRGBVal(2, 8'h88);

module colourConverter (clk, colour, enable, rgb, dimLights);
    input clk;
    input [2:0] colour;
    input enable;
    input dimLights;
    output reg [23:0] rgb;

    wire [23:0] lookupOut;

    always @(posedge clk) begin        
        if (dimLights == 1)
            `dimRGB
        else
            rgb <= lookupOut;
    end
    
    ColourLookUp your_instance_name (
        .clka(clk),
        .ena(enable),
        .wea(0),
        .addra(colour),
        .dina(0),
        .douta(lookupOut)
    );

endmodule
