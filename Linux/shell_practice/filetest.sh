#!/bin/bash

if [ -e /etc/passwd ]; then
    echo "exist"
else
    echo "not exist"
fi

if [ -d /etc/passwd ]; then
    echo "dir"
else
    echo "not dir"
fi

target_file="./string.sh"
if [ -x "$target_file" ]; then
    echo "can execute"
else
    chmod +x $target_file
fi