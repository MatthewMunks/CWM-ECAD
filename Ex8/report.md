# Results of the first run.

## Errors and warnings
* There were no errors.
Synthesis finished with 2 warnings and no critical warnings

When parsing constraints.xdc, it threw a critical warning:
    WARNING: [Vivado 12-584] No ports matched 'ckl_p'. [/home/centos/Documents/CWM-ECAD/Ex8/constraints.xdc:32]
This then meant that sys_clk was not defined so that threw an error as well. 

There is also a warning about an unconnected port rst_n. Given that it is unused both externally and internally, this doesnt matter. (This is right at the beginning of the console report.)

The clock generation error needs to be fixed.