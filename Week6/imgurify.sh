#!/bin/bash
./hipstafy.sh $1 > data.txt
echo "uploaded to:"
./urlcutter.sh data.txt
