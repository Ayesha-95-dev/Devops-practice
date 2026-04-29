#!/bin/bash

add() {
    echo $(($1 + $2))
}

subtract() {
    echo $(($1 - $2))
}

multiply() {
    echo $(($1 * $2))
}

divide() {
 if [ $2 -eq 0 ]; then
   echo "Error: Can not divide by zero"
   return 1
 fi
 echo $(($1 / $2))
}

echo "What operation? (add, subtract, multiply, divide)"
read op

echo "First number: "
read num1

echo "Second number: "
read num2

case $op in
    add)      echo "Result: $(add $num1 $num2)" ;;
    subtract) echo "Result: $(subtract $num1 $num2)" ;;
    multiply) echo "Result: $(multiply $num1 $num2)" ;;
    divide)   echo "Result: $(divide $num1 $num2)" ;;
    *)        echo "Invalid operation" ;;
esac
