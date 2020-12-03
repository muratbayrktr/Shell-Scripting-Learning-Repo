#! /bin/bash

# evaluate arithmetic operations

echo "This script wants 3 inputs from you. First 2 ones are numbers to be calculated"
echo "The third input is the operator"

read -p "first num: " X
read -p "second num: " Y
echo " [1] addition | [2] subtraction | [3] multiplication | [4] division "
read -p "operation: " op
while [[ "$op" -gt "4" ]]
do
	echo "You should input a value between 1-4"
	read -p "operation: " op
done
# Consecutive if's

if [[ "$op" == "1" ]]
then
	echo "$X + $Y=  $(($X + $Y))"
fi
if [[ "$op" == "2" ]]
then
	echo "$X - $Y=  $(($X - $Y))"
fi
if [[ "$op" == "3" ]]
then
	echo "$X * $Y=  $(($X * $Y))"
fi
if [[ "$op" == "4" ]]
then
	echo "$X / $Y=  $(($X / $Y))"
fi

echo
echo "Giving you the prompt back."

