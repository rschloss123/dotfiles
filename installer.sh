#!/bin/bash

#######################
# installer.sh        #
# Rachel Schlossman   #
#######################

mkdir -p bak 
cp ~/.bashrc ~/.tmux.conf ~/.vimrc bak

sudo apt-get update
sudo apt install -y tmux
sudo apt-get install -y curl
sudo apt-get install -y vim-nox
sudo apt-get install -y ctags

echo "sourcing colorscheme"
source ~/dotfiles/seoul256-dark.sh
echo "sourcing min-install-vim"
source ./min-install-vim

echo "update"
sudo apt update
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo add-apt-repository "deb https://download.sublimetext.com/ apt/stable/"
sudo apt update
sudo apt install -y sublime-text

cd ~/dotfiles
cp .bashrc .tmux.conf ~
