#!/bin/bash
	read -p "String: " str
	echo "Alphabetical order: "
	for i in `echo $str`; 
	do
    	echo "$i"
	done | sort
