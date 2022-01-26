#!/bin/bash

str1="hello"
str2="world"
str3="hi"
str4=""

if [ "$str1" == "$str2" ]; then
    echo "same"
else
    echo "different"
fi

if [ "$str1" \> "$str3" ]; then
    echo "${str1} is bigger than ${str3}"
else
    echo "${str1} is smaller than ${str3}"
fi

if [ -z "$str4" ]; then
    echo "empty"
else
    echo "filled"
fi

if [ -n "$str5" ]; then
    echo "filled"
else
    echo "empty"
fi