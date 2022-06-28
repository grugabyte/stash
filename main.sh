#! /bin/bash

varx="null"
vary="null"

while [ $varx == "null" ];
do
	echo "Welcome to Stash. To start enter a function or type 'help'"
	echo "to bring up a list of available commands. Enter your function here:"
	read vary

	if [ $vary == "help" ]; then
		cat help/help.txt
	elif [ $vary == "00" ]; then
		./bf.sh
	elif [ $vary == "01" ]; then
		./os.sh
	elif [ $vary == "02" ]; then
		echo "Not yet added"
	elif [ $vary == "03" ]; then
		echo "Not yet added"
	elif [ $vary == "04" ]; then
		echo "exiting..."
		varx="exit"
	elif [ $vary == "05" ]; then
		cat help/about.txt
	else 
		echo "invalid output"
	fi
done
