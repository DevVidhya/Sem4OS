#!/bin/bash 
	echo "Marks " 
	read m 
	if [ $m -ge 35 ] && [ $m -le 100 ]
	then 
		echo "Pass"  
		if [ $m -ge 90 ] 
		then 
			echo "S" 
		elif [ $m -ge 80 ] 
		then 
			echo "A" 
		elif [ $m -ge 70 ] 
		then 
			echo "B" 
		elif [ $m -ge 60 ] 
		then 
			echo "C" 
		elif [ $m -ge 50 ] 
		then 
			echo "D" 
		elif [ $m -ge 35 ] 
		then 
			echo "E" 
		fi 
	elif [ $m -ge 0 ] && [ $m -le 34 ] 
	then
		echo "Fail"
	else
		echo "Enter correct marks"
	fi

