#!/bin/bash

read -p "Enter Marks (0 to 100): " m

if ! [[ $m =~ ^[0-9]+(\.[0-9]+)?$ ]]; then
	echo "Error: Please enter a valid number."
	exit 1
fi

if (( $(echo "$m < 0 || $m > 100" | bc -l) )); then
	echo "Error: Mark not in range."
	exit 1
fi

if (( $(echo "$m >= 90" | bc -l) )); then
	echo "Grade: A"
elif (( $(echo "$m >= 80" | bc -l) )); then
	echo "Grade: B"
elif (( $(echo "$m >= 70" | bc -l) )); then
	echo "Grade: C"
elif (( $(echo "$m >= 60" | bc -l) )); then
	echo "Grade: D"
else
	echo "Grade: F"
fi
