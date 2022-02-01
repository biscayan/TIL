#!/bin/bash

for i in {0..3}; do
    echo "idx -> $i"
done

for i in {0..13..3}; do
    echo "idx -> $i"
done

for i in xx{ab,cd,ef,gh}yy; do
    echo "item -> $i"
done

for file in log-{daemon,kernel}.txt; do
    echo "file -> $file"
done