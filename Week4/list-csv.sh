#!/bin/bash
#prints out a list of november temperatures sorted by lines and separated by semicolons
./list-processor-zone-lines-csv-transform.sh | sed -n 's/  */;/gp'
