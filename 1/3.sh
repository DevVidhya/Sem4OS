#!/bin/bash
	echo "Number of elements "
	read n
	echo "Elements "
	for (( i = 0; i < $n; i++ ))
	do
		read num[$i]
	done

	for (( i = 0; i < $n ; i++ ))
	do
		for (( j = $i; j < $n; j++ ))
		do
			if [ ${num[$i]} -lt ${num[$j]}  ]; 
			then
				t=${num[$i]}
				num[$i]=${num[$j]}
				num[$j]=$t
			fi
		done
	done
	echo "Smallest: ${num[$n-1]}"
	echo "Largest: ${num[0]}"
