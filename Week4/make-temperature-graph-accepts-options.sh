#!/bin/bash

#directory argument
str=${@: -1}
 
while getopts ":cwbah" opt; do
	  case $opt in
			c)
			./get-temps.sh $str  > tempdatastripped && ./max-min-temperatures.sh > tempdataready && gnuplot min-temps-general-gnuplot && mv temperatures.eps min-temps-${str: -7}.eps
				        ;;
			w)
			./get-temps.sh $str  > tempdatastripped && ./max-min-temperatures.sh > tempdataready && gnuplot max-temps-general-gnuplot && mv temperatures.eps max-temps-${str: -7}.eps
					;;
			b)
			./get-temps.sh $str  > tempdatastripped && ./max-min-temperatures.sh > tempdataready && gnuplot max-min-temps-general-gnuplot && mv temperatures.eps min-max-temps-${str: -7}.eps
					;;
			a)
				echo "print using ascii"
					;;
			h)
				echo "use -c for only min temps -w for only max -b for both and -a for ascii printing"
					;;	
			\?)
				echo "Invalid option: -$OPTARG" >&2
					exit 1
					;;
			:)
			echo "Option -$OPTARG requires an argument." >&2
			exit 1
					;;
		esac
		done
