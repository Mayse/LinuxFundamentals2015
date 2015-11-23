#!/bin/bash
date=0
max=0
min=100

while read line           
do          
	thisdate=$(echo $line | cut -d ' ' -f 1)
	thistemp=$(echo $line | cut -d ' ' -f 2)

	#if at first line set date to that
	if [ $(echo $date) = 0 ]; then
		date=$(echo $thisdate)
	fi

	#compare date and update max
	if [ $(echo $thistemp) -gt $(echo $max) ]; then
		 max=$(echo $thistemp)
				            fi

	if [ $(echo $thistemp) -lt $(echo $min) ]; then
		 min=$(echo $thistemp)
				            fi


    done <tempdatastripped

    echo $max
    echo $min
