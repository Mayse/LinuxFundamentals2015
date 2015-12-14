#!/bin/bash
cat $1 | cut -d "," -f 21 | cut -d \" -f 4 | sed 's/\\//g'
