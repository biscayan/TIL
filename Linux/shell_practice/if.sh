#!/bin/bash

num1=123
num2=123

if [ $num1 -eq $num2 ]; then
    echo "equal"
else
    echo "not equal"
fi

if [ $num1 -gt 124 ]; then
    echo "greater"
else
    echo "not greater"
fi

if [ $num1 -lt 123 ]; then
    echo "smaller"
elif [ $num1 -eq 123 ]; then
    echo "equal"
else
    echo "greater"
fi

if [ $num1 -ne 124 ]; then
    if [ $num1 -eq 123 ]; then
        echo "num is 123"
    fi
else
    echo "num is 124"
fi