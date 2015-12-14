#!/bin/bash
for line in $(find $1 -name '*.jpg'); 
do 
	#inputfile=$(echo $line | rev | cut -d "/" -f 1 | rev)
	inputfile=$line
	echo "input is $inputfile"
	prefix=${inputfile%.jpg}
	echo "prefix is $prefix"
	outputfile=$prefix-hipstah.jpg
	echo "output is $outputfile"
	convert -sepia-tone 60% +polaroid $inputfile $outputfile
done
