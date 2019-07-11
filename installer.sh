sudo apt-get update 
sudo apt-get install -y wget

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list

sudo apt-get update
sudo apt-get install -y vim
sudo apt install -y tmux
sudo apt-get install -y sublime-text

cp .bashrc .tmux.conf .vimrc ~
