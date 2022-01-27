#!/bin/bash

idx1=0
while [ $idx1 -lt 10 ]; do
    echo "index : $idx1"
    ((idx1+=1))
done

idx2=0
until [ $idx2 -eq 10 ]; do
    echo "index : $idx2"
    ((idx2+=1))
done

idx3=0
while [ $idx3 -lt 10 ]; do
    echo "index : $idx3"
    if [ $idx3 -eq 5 ]; then
        break
    fi
    ((idx3+=1))
done