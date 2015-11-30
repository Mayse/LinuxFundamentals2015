#!/bin/bash
inotifywait -m -e CREATE -e MOVED_TO hipstafy-dropbox 2> /dev/null | while read line;
do
filename=$(echo $line|cut -d ' ' -f 3)
directory=$(echo $line|cut -d ' ' -f 1)
#echo $filename
#echo $directory
mv $directory$filename $directory/hipstafied
./hipstafy.sh hipstafy-dropbox/hipstafied/$filename
done
