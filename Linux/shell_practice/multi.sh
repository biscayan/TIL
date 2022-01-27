#!/bin/bash

for ((i=2; i<=9; i++)); do
    echo ""
    echo "$i단 시작"
    for ((j=1; j<=9; j++)); do
        ((result=i*j))
        if [ $result -lt 30 ]; then
            echo "$i x $j = $result"
        else
            echo "$i x $j = ... give up"
            break
        fi
    done
done