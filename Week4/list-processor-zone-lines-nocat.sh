#!/bin/bash
find /Users/miikas/repot/LinuxFundamentals2015/lost24/monitor/2011.11.* -name hp-temps.txt | xargs grep "PROCESSOR_ZONE"
