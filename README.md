# Welcome!
Welcome to stash, a program I wrote to help new Linux users settle in.

# Installation
Installing is pretty easy. First you'll need to clone the repository. To do this, open a terminal with `ctrl+alt+t` or open a menu system. Then enter `https://github.com/grugabyte/stash`. If git isn't installed, go here: https://git-scm.com/downloads. To install change your directory to where the project is located. To see where it is, run the `ls` (list) command. Then `cd stash`. In here run `bash install.sh`. When you run this, you will be prompted to proceed. Input '_y_'. The final step is to select the operating system from the ones available. Operating systems based on these operating systems should work too (e.g. _The script will work on Manjaro because Manjaro Linux is based on Arch Linux_).

# Usage
To use the program enter `./main.sh`. Here you can type _help_ and get a list of available commands. You can also input functions here, such as _00_ or _01_. The program is pretty straightforward. For more specific use cases, users can run scripts/functions individually. To see the available functions, use the list command with `ls`. This should show a small selection of commands, directories and files. To execute these, simply add a dot and forward slash in front (e.g. `./bf.sh`).

# Configuration
Configuration is pretty simple, and so far the only configuration that can be done is the operating system selection. To run it, input `./main.sh`. When prompted, enter _01_. You will then be prompted to select yes or no. Input _y_. This should generate a new configuration file. Then select the available operating system. Alternitively, you could run this through `./os.sh`.

# Manual Configuration & troubleshooting
For those who like to configure with tinkering, or if os.sh is missing or not working, you can use this method. First use `pwd` to print the working directory. If it doesn't read stash then change directories to where you cloned stash. This can be done with `cd stash`. Then change directories into the configuration directory with `cd conf/`. This should take you to your configuration directory. Run `ls` to list the contents of the directory. If there is a file called _os.txt_, you can use a text editor of your choice to edit it. If not, enter `cd ..` and run the program with `./main.sh`. Select _00_ for basic functions and then input _04_ to create a file. Input _y_ when prompted and name the file `conf/os`. Then give the file a .txt file extention by inputting `txt`. Then either enter _06_ and _04_ to exit the program or `ctrl+c`. Then change back into the conf directory with `cd conf/`. At this point we can edit the program with `vi os.txt`. Once inside, press _I_ to insert and make it so that your operating system is the only line of text in the document (e.g. of conf/os.txt: `debian`). Then press `esc` and input `:wq`. You can then input `cd ..` and run the program without problems.

# Development
It is likely that this prpject is going to be maintained and have new functions. If you would like to see the source code, either use this github page or use a text editor of your choice to see and modify the source code (e.g. `vi main.sh`).
