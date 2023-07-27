echo -e "\e[1;33m${bold}Installing packages...\e[0m";
if [ $OSTYPE == "linux-androideabi" ]
then
	apt install vim -y
else
	sudo apt install vim -y
fi
echo -e "\e[1;33m${bold}Copying files...\e[0m";
cp .vimrc ~/ -rf
