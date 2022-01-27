#!/bin/bash

function test_func1()
{
    echo "first function"
}

function test_func2
{
    echo "second function"
}

test_func3()
{
    echo "third function"
}

test_func1
test_func2
test_func3