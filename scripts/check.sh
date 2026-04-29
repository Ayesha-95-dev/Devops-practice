#!/bin/bash

echo "What is your age?"

read age

if [ $age -gt 18 ]; then
    echo "You are an adult"

elif [ $age -lt 18 ]; then
    echo "You are a minor"

else 
    "You did not provide a valid age"
fi
