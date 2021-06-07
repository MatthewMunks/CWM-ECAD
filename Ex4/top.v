//////////////////////////////////////////////////////////////////////////////////
// Exercise #4 - Dynamic LED lights
// Student Name:
// Date: 
//
//  Description: In this exercise, you need to design a LED based lighting solution, 
//  following the diagram provided in the exercises documentation. The lights change 
//  as long as a button is pressed, and stay the same when it is released. 
//
//  inputs:
//           clk, rst, button
//
//  outputs:
//           colour [2:0]
//
//  You need to write the whole file.
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

module dynamicLighting (rst, clk, button, colour);

    input rst;
    input clk;
    input button;
    output reg [2:0] colour;

    initial begin
        colour = {001};
    end

    always @(posedge clk or posedge rst) begin

        
        if (button == 1) begin
            colour <= colour + 1;            
        end 
        
        //Deals with the overflow into {111} as well as starting in the wrong state.
        if (colour == {000} || colour == {111}) begin
            colour = {001};
        end

        //This is an assumption about operational parameters but it feels logical
        if (rst == 1) begin
            colour = {001};
        end

        
    end

endmodule