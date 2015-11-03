#!/bin/bash
year=`date +%Y`
month=`date +%m`
ls -aR /home/tktl-csfs/home/tkt_cam/public_html/$year/$month | grep '\.jpg$' | wc -l
