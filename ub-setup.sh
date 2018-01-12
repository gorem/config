#!/bin/bash

want_spotify=false

PS3='Want Spotify? '
options=("Yes" "No")
select opt in "${options[@]}"
do
    case $opt in
	"Yes")
	    want_spotify=true
	    break
	    ;;
	"No")
	    break
	    ;;
	*) echo invalid option;;
    esac
done

sudo apt install git vim emacs24 fonts-linuxlibertine exfat-fuse exfat-utils

cd ~
mkdir .backups
mkdir Code
cd Code
git clone https://github.com/gorem/config.git

cat config/linux-bash-aliases >> ~/.bash_aliases
cp config/linux-emacs ~/.emacs
cp config/vimrc	~/.vimrc
mkdir -p ~/.vim/ftplugin/
cp config/vim-ftplugin-text.vim	~/.vim/ftplugin/text.vim

cd ~/Downloads
wget https://github.com/adobe-fonts/source-code-pro/archive/2.010R-ro/1.030R-it.zip
unzip 1.030R-it.zip
mkdir -p ~/.fonts
cp source-code-pro-2.010R-ro-1.030R-it/OTF/*.otf ~/.fonts/
fc-cache -f -v
rm ~/Downloads/1.030R-it.zip
rm -r ~/Downloads/source-code-pro-2.010R-ro-1.030R-it/

if [ ! -a ~/.inputrc ]; then echo "\$include /etc/inputrc" > ~/.inputrc; fi
echo "set completion-ignore-case On" >> ~/.inputrc

if [ "$want_spotify" = true ]; then
    echo "Spotify installing!";
    sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
    echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
    sudo apt-get update
    sudo apt-get install spotify-client
    exit;
fi

# wget https://raw.githubusercontent.com/gorem/config/master/ub-setup.sh
