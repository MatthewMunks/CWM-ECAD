//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #6 - RGB Colour Converter
// Student Name:
// Date: 
//
// Description: A testbench module to test Ex6 - RGB Colour Converter
// You need to write the whole file
//////////////////////////////////////////////////////////////////////////////////

module top_tb ();

    parameter CLK_PERIOD = 10;

    reg clk;
    reg [2:0] colour;
    reg enable;
    reg err;

    wire [23:0] rgbOut;

    //Clock generation
    initial begin
        clk = 1'b0;
        forever
            #(CLK_PERIOD/2) clk=~clk;
    end

    initial begin
        err = 0;
        enable = 1;
        colour = 0;

        #70
        colour = 1;
        #70
        colour = 2;
        #70
        colour = 3;
        
    end

    colourConverter top (
        .clk(clk),
        .enable(enable),
        .colour(colour),
        .rgb(rgbOut);
    );

endmodule