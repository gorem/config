#!/bin/bash
# run this from the home directory

sudo apt install git vim emacs24

mkdir Code
cd Code
git clone https://github.com/gorem/config.git

cp config/ub_bash_profile ~/.bash_profile
cp config/ub_emacs ~/.emacs

cd Downloads
wget https://github.com/adobe-fonts/source-code-pro/archive/2.010R-ro/1.030R-it.zip
unzip 1.030R-it.zip
mkdir -p ~/.fonts
cp source-code-pro-2.010R-ro-1.030R-it/OTF/*.otf ~/.fonts/
fc-cache -f -v
rm ~/Downloads/1.030R-it.zip
rm -r ~/Downloads/source-code-pro-2.010R-ro-1.030R-it/

if [ ! -a ~/.inputrc ]; then echo "\$include /etc/inputrc" > ~/.inputrc; fi
echo "set completion-ignore-case On" >> ~/.inputrc

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update
sudo apt-get install spotify-client

