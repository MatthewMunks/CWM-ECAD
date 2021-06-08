//////////////////////////////////////////////////////////////////////////////////
// Exercise #5 - Air Conditioning
// Student Name:
// Date: 
//
//  Description: In this exercise, you need to an air conditioning control system
//  According to the state diagram provided in the exercise.
//
//  inputs:
//           clk, temperature [4:0]
//
//  outputs:
//           heating, cooling
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 100ps

module heaterControl (clk, temperature, heating, cooling);

    input clk;
    input [4:0] temperature;
    output reg heating;
    output reg cooling;

    //The first two of these are for when you're in the state {0,0}=0 (Neither heating nor cooling)
    parameter CoolOn = 22;
    parameter HeatOn = 18;
    //This state is for when to move to state {0,0}=0 (from when heating or cooling though the condition itself is different)
    parameter AimingFor = 20;    

    always @(posedge clk) begin
        case ({heating,cooling})            
            'b01 : begin        //heating = 0, cooling = 1             
                if (temperature <= AimingFor) begin
                    cooling <= 0;
                    heating <= 0;
                end
            end
            'b10 : begin        //heating = 1, cooling = 0;  
                if (temperature >= AimingFor) begin
                    cooling <= 0;
                    heating <= 0;
                end
            end
            default : begin     //For currentState == 'b00 || 'b11                
                if (temperature <= HeatOn) begin
                    cooling <= 0;
                    heating <= 1;                    
                end else if (temperature >= CoolOn) begin
                    cooling <= 1;
                    heating <= 0;                    
                end else begin                
                    heating <= 0;
                    cooling <= 0;                    
                end
            end
                
        endcase
    end
    
endmodule
