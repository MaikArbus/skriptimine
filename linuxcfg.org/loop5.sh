#!/bin/bash

# Define a 2D array
declare -A arr=( [0,0]="apple,orange" [0,1]="banana,pear" [1,0]="grapefruit,pineapple" [1,1]="kiwi,mango" )

# Loop through the rows and columns of the array
for (( i=0; i<=1; i++ ))
do
    for (( j=0; j<=1; j++ ))
    do
        # Split the string at commas and loop through the resulting array
        IFS=',' read -ra words <<< "${arr[$i,$j]}"
        for word in "${words[@]}"
        do
            # Do some pattern matching or text manipulation on the word
            if [[ $word == *p* ]]
            then
                echo "Match found at position [$i,$j]: $word"
            fi
        done
    done
done
