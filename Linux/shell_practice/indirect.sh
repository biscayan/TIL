#!/bin/bash

str1="hello"
str2="world"
indirect="str1"
echo "${!indirect}" # hello