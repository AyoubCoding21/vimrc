echo -e "\e[1;33m${bold}Installing packages...\e[0m";
if [ $OSTYPE == "linux-androideabi" ]
then
	apt install vim -y
 	echo -e "\e[1;33m${bold}Copying files...\e[0m";
	cp .vimrc ~/ -rf
else
	sudo apt install vim -y
 	echo -e "\e[1;33m${bold}Copying files...\e[0m";
	cp .linux-vimrc ~/.vimrc -rf
fi
echo -e "\e[1;32m${bold}NVix is installed... Enjoy :)\e[0m";
