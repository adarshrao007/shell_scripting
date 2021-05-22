#!/bin/bash

rand=$RANDOM
x=${rand:0:1}

CYAN='\033[0;36m' ## prints in cyan colour
NC='\033[0m'      ## No Color

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

echo -e "you are right!!, the number you guessed is the same number guesses by me!! that is :- ${CYAN} $x ${NC} "


