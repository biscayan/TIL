#!/bin/bash

# shift # 2번째 argument부터 시작
# echo "number of args is $#" # 2개의 argument를 가지게 됨
# echo "\$1 is $1"
# echo "\$2 is $2"
# echo "\$3 is $3"

while [ "$#" -gt 0 ]; do
    echo "argument $1"
    shift
done