#RTL2GDS
A detailed description from RTL to GDS with 100 days of RTL as base point.

:new 
1) use this file to create the basic module shell.
2) usage: :new <\module_name\>

Prerequisite:
1) Digital Design concepts.

2) Editor:
   # any preferred editor.
   # vim is used for this project.
3) Simulation and synthesis tool :
   # Icarus: https://bleyer.org/icarus (opensource)
   # gtkwave: https://gtkwave.sourceforge.net 

4) Compile, elaboration and simulation:
   # Create a design and testbench
   # Add $dumpfile("waveform.vcd") and $dumpvars(0,"tb") to create a vcd dump file in testbench, without fail.
   # If there are only tb and design file, then use : "iverilog -o output design_tb.v design.v && vvp output"
   # if there are multiple modules in the design, then create a filelist with all the RTL files, including testbench and use : "iverilog -o output -f filelist.f && vvp output"
   # To view the output waveform use : "gtkwave waveform.vcd"

5) Synthesis
