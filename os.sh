#! /bin/bash

opta="null"
osop="null"

echo "would you like to change the operating system? [y/n]"
read opta
if [ $opta == "y" ]; then 
	echo "proceeding"
	rm conf/os.txt
	touch conf/os.txt
	echo "File generated, select your operating system:"
	echo "arch		debian"
	read opop
	echo $opop >> conf/os.txt
	echo "'$opop' was selected, operating system changed."
elif [ $opta == "n" ]; then 
	echo "aborting..."
else 
	echo "Default: aborting..."
fi
