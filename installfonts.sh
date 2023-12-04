sudo apt install unzip wget -y --no-install-recommends
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.2/Hack.zip
mkdir ~/.fonts/; 
unzip Hack.zip;
cp HackN* ~/.fonts/;
fc-cache -f -v;
