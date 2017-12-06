mkdir ~/.backups
mkdir ~/Code
cd ~/Code
git clone https://github.com/gorem/config.git

cat config/linux-bash-aliases >> ~/.bash_aliases
cp config/linux-emacs ~/.emacs

sudo dnf install emacs vim gnome-tweak-tool

cd ~/Downloads
wget https://github.com/adobe-fonts/source-code-pro/archive/2.010R-ro/1.030R-it.zip
unzip 1.030R-it.zip
mkdir -p ~/.fonts
cp source-code-pro-2.010R-ro-1.030R-it/OTF/*.otf ~/.fonts/
fc-cache -f -v
rm ~/Downloads/1.030R-it.zip
rm -r ~/Downloads/source-code-pro-2.010R-ro-1.030R-it/

# To do:
# Simplenote
# Dropbox
# Visual Studio Code
# Linux Libertine
# xelatex menu option
# change prompt