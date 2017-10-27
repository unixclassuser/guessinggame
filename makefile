readme.md:
	echo "**Guessing Game.**" > README.md
	date >> README.md
	echo -n "In *guessinggame.sh*, the number of lines of code is " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
