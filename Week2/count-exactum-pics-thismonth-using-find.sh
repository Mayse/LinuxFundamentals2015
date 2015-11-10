#!/bin/bash
year=`date +%Y`
month=`date +%m`
find /home/tktl-csfs/home/tkt_cam/public_html/$year/$month -type f -name "*.jpg"| grep '\.jpg$' | wc -l
