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

// As a note, Parameters, Registers and wires, Clock generation, FinishTest and Instantiate counter module are all heavily inspired from top_tb.v from Ex2. 

module top_tb(
    );
    
//Todo: Parameters
    parameter CLK_PERIOD = 10;
    
    parameter STOP_COUNTING_AT = 27;
    parameter COUNT_UP = 1;
    parameter COUNT_DOWN = 2;
    parameter STOP_COUNTING = 3;
    parameter POST_RESET = 4;
    

//Todo: Regitsers and wires
    reg clk;
    reg rst;
    reg change;
    reg on_off;    
    wire [7:0] counter_out;
    
    // For telling whether we're counting up or down    
    reg [3:0] testPhase;

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
        change = 1;
        err = 0;
        testPhase = COUNT_UP;
    end
    
    always @(posedge counter_out[7]) begin
        if (testPhase == COUNT_UP) begin
            testPhase = COUNT_DOWN;
            on_off = 1;
        end
        else if (testPhase == COUNT_DOWN) begin
            #200
            if (counter_out == 0) begin 
                err = 1;
                $display("***TEST FAILED! When rst is 0, we want it to still be changing!***");
            end
            testPhase = STOP_COUNTING;
            rst = 1;
            #50
            if (counter_out != 0) begin
                err = 1;
                $display("***TEST FAILED! When rst is 1, it keeps changing!***");
            end
            rst = 0;
            #50
            if (counter_out == 0) begin
                err = 1;
                $display("***TEST FAILED! When rst is 0, it should be counting!***");
            end            
            if (testPhase == COUNT_DOWN && counter_out[7] != 1) begin
                err = 1;
                $display("***TEST FAILED! When rst is 0, it should be counting down!***");
            end
            testPhase = POST_RESET;
                
        end        
    end
    
    always @(posedge counter_out[0]) begin
        if (counter_out == STOP_COUNTING_AT) begin
            change = 0;
            #50
            if (counter_out != STOP_COUNTING_AT) begin
                err = 1;
                $display("***TEST FAILED! When change is 0, it keeps changing!***");
            end
            if (testPhase != POST_RESET)
                change = 1;
                
        end
    end 
       
    
//Todo: Finish test, check for success
      initial begin
        #5500
        if (counter_out != STOP_COUNTING_AT) begin
            err = 1;
            $display("***TEST FAILED! When change is 0, it keeps changing!***");
        end
        if (err==0)
            $display("***TEST PASSED! :) ***");
        $finish;
      end

//Todo: Instantiate counter module
    monitor top (
	   .clk (clk),
	   .rst (rst),
	   .change (change),
	   .on_off (on_off),
	   .counter_out (counter_out)
   );	
 
endmodule 
