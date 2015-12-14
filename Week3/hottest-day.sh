#!/bin/bash
hottest=0
for line in $(find ../lost24/monitor/2011.11.* -name "hp-temps.txt");
do
	date=$(echo $line | cut -d "/" -f 4)	
	temp=$(cat $line | grep "PROCESSOR_ZONE" | sed -n 's/  */;/gp' | sed -f csv-transform-rules.sed | cut -d ";" -f 3 | cut -c 1-2)
	if [ $temp -gt $hottest ]; then
		hottest=$temp
		datey=$date
	     fi
done
echo "hottest day was $datey with a temperature of $hottest C"
