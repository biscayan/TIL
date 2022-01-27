#!/bin/bash

colors="red orange blue black green"
for color in $colors; do
    echo "color : $color"
done

for i in {0..6}; do
    echo "$i"
done

for i in {0..10..3}; do
    echo "$i"
done

for ((i=0; i<=10; i++)); do
    echo "$i"
done

for ((i=0; i<=10; i+=3)); do
    echo "$i"
done

num1=0
for ((i=0; i<=9; i++)); do
    let "num1++"
    echo "number is $num1"
done

num2=0
for ((i=0; i<=9; i++)); do
    ((num2+=1))
    echo "number is $num2"
done