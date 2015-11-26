#!/bin/bash
#str="onpa hyvinkin"
#echo "$# arguments"
#echo "and they were $@"
	for var in "$@"
	do
		str="$str $var +"
	done
str="$str 0"
echo "scale=3; ($str)/$#" | bc
#echo $str
