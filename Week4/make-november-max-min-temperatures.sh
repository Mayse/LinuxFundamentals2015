#!/bin/bash
./get-temps.sh /Users/miikas/repot/LinuxFundamentals2015/lost24/monitor/2011.11 > tempdatastripped && ./max-min-temperatures.sh > tempdataready && gnuplot max-min-temps-gnuplot
