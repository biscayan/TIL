#!/bin/bash

A=5
let 'A=A+3'
echo $A

((A=A+3))
echo $A

A=$((A=A+3))
echo $A

echo "$A + 22 = $((A+22))"
echo ""

B=5 # 101
echo "$((B<<2))" # 5 * 2^2
echo "$((B>>1))" # 5 // 2^1
echo "$((B|8))" # 101 | 1000 -> 1101
echo "$((B&15))" # 101 & 1111 -> 101
echo ""

C=5
echo "$((C++))" # 5
echo "$((++C))" # 7