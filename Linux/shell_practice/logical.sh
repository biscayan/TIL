#!/bin/bash

a="1111"
b="222"
c="333"

if [ "$a" -gt "$b" -a "$a" -gt "$c" ]; then
    echo "$a is the max"
else
    echo "$a is not max"
fi

if [ "$a" -gt "$b" ] && [ "$a" -gt "$c" ]; then
    echo "$a is the max"
else
    echo "$a is not max"
fi

if [[ "$a" -gt "$b" || "$a" -gt "$c" ]]; then
    echo "$a is the max"
else
    echo "$a is not max"
fi

if [ "$a" -gt "$b" -a "$a" -gt "$c" -a "$b" -gt "$c" ]; then
    echo "$a is the max"
else
    echo "$a is not max"
fi