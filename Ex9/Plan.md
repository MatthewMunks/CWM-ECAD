# Plan for Ex9.

## Operationality I'm going for.

Air conditioning is already wired up. (Having copied and pasted from Ex8).

The lights system should also be added.
 - That will require setting up another memory buffer. (Fairly simple since the commands are already set up.)
 - It should also be possible to incooporate a counter and threshold into that system to allow the lights to light up at different rates.

We may want to switch the entire system off and have a sleep mode. (Mutually distinct).
 - Implemented as a boolean.
    - Sleep mode triggered by .sleep(1)
    - System on triggered by .sysOn(1)
    - Atmospheric mode triggered by .atmospheric(1)
    - (Note that Atmospheric and Sleep are mutually distinct!)
 - This can be implemented without changing the modules created thus far. (As in it can be implemented within top.v. It doesn't need to be an input to the others.)
 - This will also invlove working what "atmospheric mode" actually means. 
    - Lights go to half value?
    - Division is bad. We'd want a module for specifically doing F -> 8 (i.e. for halving the intensity).
 - There's other trivial stuff (such as burgler alarm or extending the lights system) that can be done but is simply an extension of what's been done before. (State machine/checking to see if a state has changed at all).

## On the design.

I will probably implement two modules within top.v.For compilation, we need all the inputs to be split. However for implementing top_tb.v, it will definitely be easier to have temperature be one input rather than 5 (for instance.) I'm therefore going to use two modules wired up to one another. 