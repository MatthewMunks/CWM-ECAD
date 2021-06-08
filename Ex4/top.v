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

    //Assumed initial position. (Doesn't really matter but there it is.)
    initial begin
        colour = 'b001;
    end

    always @(posedge clk or posedge rst) begin
        //Feels like it could be done simply through incrementing colour but at the same time dealing with the edge cases would have to be done separately.
    
        if (rst == 1) 
            colour = 'b001;
        else if (colour == 'b000 || colour == 'b111)
            colour = 'b001;
        else if (button == 1) begin
            case (colour)
                1 : colour = 2;
                2 : colour = 3;
                3 : colour = 4;
                4 : colour = 5;
                5 : colour = 6;
                6 : colour = 1;
                default : colour = 1;    
            endcase;                        
        end
        
    end

endmodule