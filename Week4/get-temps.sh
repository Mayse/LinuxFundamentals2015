#!/bin/bash
#find /Users/miikas/repot/LinuxFundamentals2015/lost24/monitor/2011.11.* -name hp-temps.txt | xargs grep "PROCESSOR_ZONE" | sed -f csv-transform-rules.sed | sed -n 's/  */;/gp' | cut -d ';' -f 8,12 | sed "s/C//" | sed "s/;/ /"
find $1.* -name hp-temps.txt | xargs grep "PROCESSOR_ZONE" | sed -f csv-transform-rules.sed | sed -n 's/  */;/gp' | cut -d ';' -f 8,12 | sed "s/C//" | sed "s/;/ /" | sort | uniq
