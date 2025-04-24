#!/bin/bash

echo "For loop Printing Even Numbers..."
for ((i=1; i <= 10; i++)); do
	if [[  $(($i % 2)) -eq 0 ]]; then
		echo "$i"
	fi
done

echo "While loop Printing Odd Numbers..."
i=1
while (( i <= 10)); do
        if [[  $(($i % 2)) -eq 1 ]]; then
                echo "$i"
        fi

	((i++))
done                                                            
