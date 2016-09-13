#Dynon EFIS nasal code
setlistener("/systems/electrical/outputs/master-avionics", func{
if(getprop("/systems/electrical/volts")>6){
if(getprop("/instrumentation/dynon-efis/ready")== 0){
                interpolate("/instrumentation/dynon-efis/ready", 1, 5);
                }
if(getprop("/instrumentation/dynon-efis/ready")== 1){
                interpolate("/instrumentation/dynon-efis/ready", 0, 5);
                }
                }
                });