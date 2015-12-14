#!/bin/bash
filename=$(echo $1| rev | cut -d "/" -f 1 | rev)
#echo "filename is $filename"
wget $1
	inputfile=$filename
#	echo "imputfile is $inputfile"
	prefix=${inputfile%.jpg}
#	echo "prefix is $prefix"
	outputfile=$prefix-hipstah.jpg
#	echo "outputfile is $outputfile"
	convert -sepia-tone 60% +polaroid $inputfile $outputfile
	curl --data-binary "@$outputfile" -v -H "Authorization: Client-ID *PUT_YOUR_OWN_CLIENT_ID_IN_HERE* -X POST https://api.imgur.com/3/image
