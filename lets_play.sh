#!/bin/bash

rand=$RANDOM
x=${rand:0:1}

echo "Lets play a game!"
echo "Let me guess a number between 0 and 9"
echo "Now its your turn to write the number i guessed!"
echo "Enter the number"
read n

while [[ $n -ne $x ]]
do
        echo "your guess is wrong!!"
        echo "Do you want to play again?"
        echo "enter yes or no"
        read y
        if [[ "$y" == "y" || "$y" == "yes" ]];
        then  	
        	echo "enter number again!"
    	elif [[ "$y" == "n" || "$y" == "no" ]];
    	then
    		echo "okay, bye!"
    		exit
    	fi
		read n
done

echo "Great!, the number guessed by me is $x"

