#!/bin/bash

string="0123456789ABCDEF"
echo "$string"
# 변수 자체가 변하지는 않음
echo "${string:5}" # 56789ABCDEF
echo "${string:5:2}" # 56
echo "${string:(-5)}" # BCDEF
echo "${string:5:-1}" # 56789ABCDE
echo "${string:5:-5}" # 56789A

array=(0 1 2 3 4 5 6 7 8 9 A B C D E F)
echo "${array[@]}" # 0 1 2 3 4 5 6 7 8 9 A B C D E F
echo "${array[@]:5}" # 5 6 7 8 9 A B C D E F
# echo "${array[@]:5:-3}" array에서 length는 음수 불가능
echo "${array[@]:(-5)}" # B C D E F