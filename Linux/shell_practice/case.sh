#!/bin/bash

string1="hello world"
echo "${string1^^}" # HELLO WORLD
echo "${string1^}" # Hello world
echo "${string1^^l}" # heLLo worLd
echo "${string1^^[lo]}" # heLLO wOrLd

string2="HELLO WORLD"
echo "${string2,,}" # hello world
echo "${string2,}" # hELLO WORLD
echo "${string2,,L}" # HEllO WORlD
echo "${string2,,[LO]}" # HEllo WoRlD

str_arr=("hello" "world")
echo "${str_arr[@]^}" # Hello World