#!/bin/bash

# Define a 2D array
declare -A arr=( [0,0]=1 [0,1]=2 [1,0]=3 [1,1]=4 )

# Example of using break statement within nested loops
for (( i=0; i<=1; i++ ))
do
    for (( j=0; j<=1; j++ ))
    do
        if (( ${arr[$i,$j]} == 3 ))
        then
            echo "Break statement encountered at position [$i,$j]"
            break 2
        fi
        echo "Processing element [$i,$j]: ${arr[$i,$j]}"
    done
done

# Example of parallel processing within nested loops
for (( i=0; i<=1; i++ ))
do
    for (( j=0; j<=1; j++ ))
    do
        (echo "Processing element [$i,$j]: ${arr[$i,$j]}"; sleep 1) &
    done
done
wait

# Example of optimizing loop structure
for (( j=0; j<=1; j++ ))
do
    for (( i=0; i<=1; i++ ))
    do
        echo "Processing element [$i,$j]: ${arr[$i,$j]}"
    done
done

# Example of using functions within nested loops
process_element() {
    echo "Processing element [$1,$2]: ${arr[$1,$2]}"
}

for (( i=0; i<=1; i++ ))
do
    for (( j=0; j<=1; j++ ))
    do
        process_element $i $j
    done
done
