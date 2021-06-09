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

//ColourLookUp lookingUpColours (
//  .clka(clka),    // input wire clka
//  .ena(ena),      // input wire ena
//  .wea(wea),      // input wire [0 : 0] wea
//  .addra(addra),  // input wire [3 : 0] addra
//  .dina(dina),    // input wire [15 : 0] dina
//  .douta(douta)  // output wire [15 : 0] douta
//);

module colourConverter (clk, colour, enable, rgb);
    input clk;
    input [2:0] colour;
    input enable;
    output reg [23:0] rgb;

    wire [23:0] lookupOut;

    always @(posedge clk) begin
        rgb = lookupOut;
    end
    
    lookingUpColours(
        .clka(clk),
        .ena(enable),
        .wea(0),
        .addra(colour),
        .dina(0),
        .douta(lookupOut)
    );

endmodule