#!/bin/bash

if [[ $# -ne 2 ]]; then
	echo "Error: Provide exactly 2 arguments"
	exit 1
fi

if ! [[ $1 =~ ^-?[0-9]+(\.[0-9]*)?$ ]] || ! [[ $2 =~ ^-?[0-9]+(\.[0-9]*)?$ ]]; then
	echo "Error: Enter Only Numbers"
	exit 1
fi

sum=$(echo "$1 + $2" | bc)
echo "the sum is: $sum"
