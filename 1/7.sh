#!/bin/bash

	echo "Number of elements "
	read n
	echo "Elements "
	for (( i = 0; i < $n; i++ ))
	do
		read num[$i]
	done

	echo "Unsorted array "
	for (( i = 0; i < $n; i++ ))
	do
		echo ${num[$i]}
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

	echo -e "\nDescending order "
	for (( i=0; i < $n; i++ ))
	do
		echo ${num[$i]}
	done
