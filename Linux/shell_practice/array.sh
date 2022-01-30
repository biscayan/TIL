#!/bin/bash

# indexed array
declare -a idx_arr1
idx_arr1+=(abc def)
echo "number of elements is ${#idx_arr1[@]}"

idx_arr2=(abc def 123 456)
echo "number of elements is ${#idx_arr2[@]}"

for ele in "${idx_arr2[@]}"; do
    echo "array element \"$ele\""
done

unset idx_arr2[1]

echo "third element is ${idx_arr2[2]}"

for key in "${!idx_arr2[@]}"; do
    echo "key \"$key\" -> ${idx_arr2[$key]}"
done
echo ""

# associative array
declare -A ass_arr
ass_arr=([a]=hello [b]=world [c]=there [d]=1234)
echo "number of elements is ${#ass_arr[@]}"

# for문의 순서가 지켜지지 않음
for ele in "${ass_arr[@]}"; do
    echo "array element \"$ele\""
done

unset ass_arr[b]

for key in "${!ass_arr[@]}"; do
    echo "key \"$key\" -> ${ass_arr[$key]}"
done