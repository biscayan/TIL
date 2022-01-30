#!/bin/bash

A="hello     world"

echo $A   # hello world
echo "$A" # hello     world
echo '$A' # $A

result=`ls` # result=$(ls)와 같음
echo "$result"