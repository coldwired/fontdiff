#!/usr/bin/env bash

declare -a cases=("UPPER" "LOWER")
declare -a letters=("S" "A" "B" "C" "D" "E" "F" "G" "H" "I" "J" "K" "L" "M" "N" "O" "P" "Q" "R" "T" "U" "V" "W" "X" "Y" "Z")

## now loop through the above array


for i in "${cases[@]}"
    do
    for j in "${letters[@]}"
        do
            filename=""
            if [ $i = "LOWER" ]; then
                filename="$i-"$(echo "$j" | tr '[:upper:]' '[:lower:]')
            else
                filename="$i-"$(echo "$j" | tr '[:lower:]' '[:upper:]')
            fi
           
            folder=../storage/${filename/-/"/"}
            echo $folder
            #echo $filename
            python3 train.py --dataset $folder --model $filename.model --labelbin $filename_mlb.pickle
            # or do whatever with individual element of the array
            done
    done
