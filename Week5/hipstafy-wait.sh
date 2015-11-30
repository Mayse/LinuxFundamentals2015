#!/bin/bash
inotifywait -m -e CREATE -e MOVED_TO hipstafy-dropbox 2> log.err | while read line;
do
filename=$(echo $line|cut -d ' ' -f 3)
mv hipstafy-dropbox/$filename hipstafy-dropbox/hipstafied
./hipstafy.sh hipstafy-dropbox/hipstafied/$filename
done
