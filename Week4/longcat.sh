#!bin/bash/
. cattop.sh 
 COUNTER=$1
         until [  $COUNTER -lt 1 ]; do
             echo "  |       |" 
             let COUNTER=COUNTER-1 
         done
. catbottom.sh

