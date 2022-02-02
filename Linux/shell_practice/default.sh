#!/bin/bash

echo "${str1:-hello}" # hello
echo "$str1" # 값 출력 안됨, assignment x
echo "${str2:=hello}" # hello
echo "$str2" # hello
echo "${str2:+world}" # world
echo "$str2" # hello # hello, 값 자체를 변경하지는 않음
echo "${str3:?설정된 변수가 없습니다.}" # 에러 발생, 스크립트 중단