#!/bin/bash

case $1 in
	start)
		echo "starting daemon"
		nohup ./hipstafy-wait.sh 2>err.log >hipstafy.log&
		echo $! >true_name.txt
		;;
	stop)
		echo "stopping daemon"
		kill $(cat true_name.txt)
		;;
	status)
		kill -0 $(cat true_name.txt) 2>/dev/null
		if (($? == 0)) 
		then
		echo "still alive"
		else
		echo "no running process found"
		fi
		;;
	restart)
		echo "stopping daemon"
                kill $(cat true_name.txt)
		echo "starting daemon"
                nohup ./hipstafy-wait.sh 2>err.log >hipstafy.log&
                echo $! >true_name.txt
		;;
esac

