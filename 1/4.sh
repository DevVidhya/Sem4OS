#!/bin/bash
	echo "Number: "
	read A
	Sum=0
	while [ $A -gt 0 ]
	do
		k=$(( $A % 10 ))
		A=$(( $A / 10 ))
		Sum=$(( $Sum + $k ))
	done
	echo "Sum of digits: $Sum";
