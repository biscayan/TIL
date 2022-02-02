#!/bin/bash

original_str="ABCDEFGABCDEFG"
echo "replace_base: ${original_str/CD/cd}"
echo "replace_all: ${original_str//CD/cd}"
echo "replace_first: ${original_str/#AB/ab}"
echo "replace_last: ${original_str/%FG/fg}"
echo "delete_base: ${original_str/CD/}"
echo "delete_all: ${original_str//CD/}"