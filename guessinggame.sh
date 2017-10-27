#!/user/bin/env bash
# File: guessinggame.sh

numfiles=$(ls | wc -l)

function guess {
        echo -n "What is your guess: "
        read response
}

clear
echo "Welcome to the guessing game!"
echo
echo "There are a certain number of files in the current directory."
echo "I would like you to guess how many there are."
echo

guess

while [[ $response != $numfiles ]]
do
	if [[ $response -gt $numfiles ]]
	then
		echo -n "Your guess of $response is too high."
	else
		echo -n "Your guess of $response is too low."
	fi
	echo "  Please try again."
	echo 
	guess
done

echo
echo "Your guess of $response is correct!"
echo "The number of files in the current directory is $numfiles."
	

