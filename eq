#!/bin/bash

num=$#

if [ "$1" == "-m" ]; then
	for var in $@
	do
	echo "$var" | bc
	num=$((num-1))
	done
fi 

if [ "$1" == "-gamma" ]; then
	echo "scale=6; 1/(sqrt(1-($2^2)))" | bc
fi

if [ $# = 0 ]; then
	echo "ERROR: $num ARGUMENTS GIVEN"
fi
