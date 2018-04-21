mkdir ~/.backups
mkdir ~/Code
cd ~/Code
git clone https://github.com/gorem/config.git

cat config/linux-bash-aliases.bash >> ~/.bash_aliases
source ~/.bash_aliases
cp config/linux-emacs.el ~/.emacs
cp config/vimrc.vim ~/.vimrc
mkdir -p ~/.vim/ftplugin/
cp config/vim-ftplugin-text.vim ~/.vim/ftplugin/text.vim

sudo dnf install emacs vim gnome-tweak-tool

cd ~/Downloads
wget https://github.com/adobe-fonts/source-code-pro/archive/2.030R-ro/1.050R-it.zip
unzip 1.050R-it.zip
mkdir -p ~/.fonts
cp source-code-pro-2.030R-ro-1.050R-it/OTF/*.otf ~/.fonts/
fc-cache -f -v
rm ~/Downloads/1.050R-it.zip
rm -r ~/Downloads/source-code-pro-2.030R-ro-1.050R-it/

# To do:
# Simplenote
# Dropbox
# Visual Studio Code
# Linux Libertine
# xelatex menu option
# change prompt
# Chrome

# wget https://raw.githubusercontent.com/gorem/config/master/fedora-setup.sh && bash fedora-setup.sh
