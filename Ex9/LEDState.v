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

//threshold is the threshold over which the colour will change
//and so represents the number of clock ticks that occur between changes of colour.
module dynamicLighting (rst, clk, button, colour, threshold, sysOn);

    input rst;
    input clk;
    input button;
    input sysOn;
    input [5:0] threshold;
    output reg [2:0] colour;

    reg[5:0] counter;

    always @(posedge clk or posedge rst) begin
        //Feels like it could be done simply through incrementing colour but at the same time dealing with the edge cases would have to be done separately.

        //If rst=0, colour!=[illegal state] and button=0 then colour isn't updated. 
        // I can't see any way round this though given that the whole point is that
        // under these conditions, colour doesn't change. 
    
        if (rst == 1) begin
            colour <= 'b001;
            counter <= 0;
        end else begin
            if (counter >= threshold) begin
                counter <= 0;

                // No real way for getting into that state. 
                if (colour == 'b000 || colour == 'b111)
                    colour <= 'b001;
                else if (button == 1) begin
                    case (colour)
                        1 : colour <= 2;
                        2 : colour <= 3;
                        3 : colour <= 4;
                        4 : colour <= 5;
                        5 : colour <= 6;
                        6 : colour <= 1;
                        default : colour <= 1;    
                    endcase;
                end

            end else
                counter <= counter + 1;            
        end            
    end

endmodule