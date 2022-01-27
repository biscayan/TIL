#!/bin/bash

function test_func()
{
    if [ -z "$1" ]; then
        echo "param is missing"
        return 1
    fi

    if [ -z "$2" ]; then
        echo "param2 is missing"
        return 2
    fi

    local param1="$1"
    local param2="$2"
    # param10 = "${10}"

    echo "first parameter is $param1"
    echo "second parameter is $param2"

    return 0 # only return integers from 0 to 255
}

param1="abcd"
result=$(ls)
echo "$result"
echo ""
test_func "hello" "world"
retrun_val="$?"
if [ "$retrun_val" -eq 0 ]; then
    echo "success"
else
    echo "fail"
fi
echo "global param1 is $param1"