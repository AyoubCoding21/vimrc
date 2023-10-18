all:
	echo -e "\e[1;33m${bold}Installing packages...\e[0m";
	if [ $OSTYPE == "linux-androideabi" ]
	then
		apt install vim -y
 		echo -e "\e[1;33m${bold}Copying files...\e[0m";
		cp .vimrc ~/ -rf
	else
		sudo apt install vim -y
 		echo -e "\e[1;33m${bold}Copying files...\e[0m";
		cp linux.vimrc ~/.vimrc -rf
	fi
	echo -e "\e[1;32m${bold}NVix is installed... Enjoy :)\e[0m";

fontsinstall:
	sudo apt install unzip wget -y --no-install-recommends
	wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Hack.zip
	if [ ! -d ~/.fonts/ ]
	then
  		mkdir ~/.fonts/
	fi
	unzip Hack.zip
	cp HackN* ~/.fonts/
	fc-cache -f -v

installlinux:
	sudo apt install git curl -y --no-install-recommends npm clangd
	mkdir -p ~/.vim/autoload
	curl -o ~/.vim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

installtermux:
	apt install git curl -y --no-install-recommends nodejs clang
	mkdir -p ~/.vim/autoload
	curl -o ~/.vim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

updatelinux:
	sudo npm i n -g
	sudo n latest
	bash

updatetermux:
	npm i n -g
	n latest
	bash
