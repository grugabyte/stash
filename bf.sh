#! /bin/bash

echo "Basic functions"
vari="null"
varv="null"
filex="conf/os.txt"
filen="null"
varo="null"
fext="null"

while [ $vari == "null" ];
do
	echo "Select function or input 'help' to find the options"
	read varu

	if [ $varu == "help" ]; then
		cat help/help.txt
	elif [ $varu == "00" ]; then
		while read -r line; do
			if [[ "$line" == *"arch"*  ]]; then
				sudo pacman -Syu
			elif [[ "$line" == *"debian"* ]]; then
				sudo apt update
				sudo apt upgrade
			elif [[ "$line" == *"flatpak"* ]]; then
				flatpak update
			fi
		done < $filex
	elif  [ $varu == "01" ]; then
		while read -r line; do
			if [[ "$line" == *"arch"* ]]; then
				sudo pacman -S git curl vim nano gcc 
			elif [[ "$line" == *"debian"* ]]; then
				sudo apt install git curl vim nano gcc
			else
				echo "your configuration file may be broken, try running the install script again"
			fi
		done < $filex
	elif [ $varu == "02" ]; then
		echo "not yet added"
	elif [ $varu == "03" ]; then
		varo="null"
		filen="null"
		ls
		echo "enter the file you would like to delete"
		read filen
		echo "Remove $filen? [y/n]"
		read varo
		if [ $varo == "y" ]; then
			echo "removing file..."
			rm $filen
			echo "removed $filen"
		elif [ $varo == "n" ]; then 
			echo "aborting..."
		else 
			echo "default: aborting..."
		fi
	elif [ $varu == "04" ]; then 
		varo="null"
		filen="null"
		fext="null"
		echo "create a file? [y/n]"
		read varo
		if [ $varo == "y" ]; then 
			echo "What would you like to name the file?"
			read filen
			cat help/fifor.txt
			echo "enter file format (exclude the period (.)"
			read  fext
			echo "creating $filen.$fext"
			touch $filen.$fext
			echo "created"
			ls
		elif [ $varo == "n" ]; then
			echo "aborting"
		else 
			echo "invalid output"
		fi
	elif [ $varu == "05" ]; then
		echo "Installing a graphical user interface"
		cat help/gui.txt
		varo="null"
		echo "select gui:"
		read varo
		if [ $varo == "00" ]; then 
			echo "adding feature"
		elif [ $varo == "01" ]; then
			echo "adding feature"
		elif [ $varo == "02" ]; then
			echo "adding feature"
		elif [ $varo == "03" ]; then 
			echo "adding feature"
		else 
			echo "invalid"
		fi
		
	elif [ $varu == "06" ]; then
		echo "exiting..."
		vari="EXIT"
	else
		echo "Invalid output"

	fi
done
