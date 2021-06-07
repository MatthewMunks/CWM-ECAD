//////////////////////////////////////////////////////////////////////////////////
// Test bench for Exercise #3 - Active IoT Devices Monitor
// Student Name:
// Date: 
//
// Description: A testbench module to test Ex3 - Active IoT Devices Monitor
// Guidance: start with simple tests of the module (how should it react to each 
// control signal?). Don't try to test everything at once - validate one part of 
// the functionality at a time.
//////////////////////////////////////////////////////////////////////////////////
`timescale 1ns / 100ps

// As a note, Parameters, Registers and wires, Clock generation and Instantiate counter module are all heavily inspired from top_tb.v from Ex2. 

module top_tb(
    );
    
//Todo: Parameters
    parameter CLK_PERIOD = 10;

//Todo: Regitsers and wires
    reg clk;
    reg rst;
    reg change;
    reg on_off;    
    wire [7:0] counter_out;

    reg err;

//Todo: Clock generation
    initial
    begin
       clk = 1'b0;
       forever
         #(CLK_PERIOD/2) clk=~clk;
     end

//Todo: User logic
    initial begin 
        rst = 0;
        on_off = 0;
        change = 0;
//        counter_out = 0;

    end
    
//Todo: Finish test, check for success

//Todo: Instantiate counter module
    monitor top (
	   .clk (clk),
	   .rst (rst),
	   .change (change),
	   .on_off (on_off),
	   .counter_out (counter_out)
   );	
 
endmodule 
