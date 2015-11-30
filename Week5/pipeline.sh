#!/bin/bash
find ../lost24/monitor/ -name "hp-temps.txt" | xargs -n 32 -P 8 cat > findresults
grep "PROCESSOR_ZONE" findresults > out.txt
sed -f csv-transform-rules.sed out.txt | sed -n 's/  */;/gp' | cut -d ";" -f 3 | sed s/C// > readable.txt
	max=0
        while read line 
	        do
                if (($line > $max)); then
	        max=$line
	        fi								        done<readable.txt
        echo $max
