#!/bin/bash

echo "What is your name?"
read name

echo "What is your age?"
read age

echo "Hello ${name}! You are ${age} years old."

years_until_retirement=$((65 - age))
echo "You have ${years_until_retirement} years until retirement."

