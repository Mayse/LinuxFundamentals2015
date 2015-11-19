#!/bin/bash
./list-processor-zone-lines-nocat.sh | sed -f csv-transform-rules.sed
