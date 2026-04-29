#!/bin/bash

echo "Enter you score: "
read score

if [ $score -ge 90 ]; then
    echo "You got grade A"

elif [ $score -ge 80 ]; then
    echo "You got grade B"

elif [ $score -ge 70 ]; then
    echo "You got grade C"

else 
    "You are doomed"
fi
