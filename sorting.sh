#!/bin/bash
echo "Enter an array of numbers:"
read -a array
len="${#array[@]}"
# echo "unsorted array is ${array[@]}"
# echo $len
echo "sorting ascending"
for ((i = 0; i < len; ++i))
do
    for ((j = i + 1; j < len; ++j))
    do
        # echo "${array[i]} and ${array[j]}"
        if [ "${array[j]}" -lt "${array[i]}" ]
        then
            tmp="${array[i]}"
            array[i]="${array[j]}"
            array[j]=$tmp
        fi
    done
done
echo "Sorted array is ${array[@]}"

echo "sorting descending"
for ((i = 0; i < len; ++i))
do 
    for ((j=i+1; j < len; ++j))
    do
        if [ "${array[j]}" -gt "${array[i]}" ]
        then 
            tmp="${array[i]}"
            array[i]="${array[j]}"
            array[j]=$tmp
        fi
    done
done
echo "Sorted array is ${array[@]}"

