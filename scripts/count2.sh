#!/bin/bash

calc() {
     local a=$1
     local b=$2

    echo "The sum is: $((a+b))"
    echo "The product is: $((a*b))"
    echo "The outcome is: $((a/b))"
}

calc 8 5
