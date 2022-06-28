#! /bin/bash

echo "Welcome to the install script!"
vart="null"
echo "Would you like to proceed? [y/n]"
read vart

if [ $vart == "y" ]; then
	echo "proceeding"
	chmod +x main.sh
	chmod +x bf.sh
	chmod +x os.sh
	varOS="debian" #default
	echo "Select your operating system"
	echo "available:   arch	  debian"
	read varOS
	touch conf/os.txt
	if [ $varOS == arch ]; then
		echo $varOS >> conf/os.txt
	elif [ $varOS == debian ]; then
		echo $varOS >> conf/os.txt
	else
		echo "default: debian"
	fi

elif [ $vart == "n" ]; then
	echo "aborting"
else
	echo "aborting"
fi
