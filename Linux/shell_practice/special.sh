#!/bin/bash

# if [ $# -ne 1 ]; then
#     echo "usage: $0 FILENAME"
#     exit 1
# fi

# echo "parameter is $1"
# echo "pid is $$"

echo "number of parameter is $#"
echo ""

echo "trying to \$@"
for arg in "$@"; do
    echo "argument $arg"
done

echo ""

echo "trying to \$*"
echo "all parameter is [$*]"