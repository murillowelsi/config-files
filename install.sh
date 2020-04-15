#!/bin/bash

echo "==========================================================

                NOTEBOOK MURILLO SETUP

=========================================================="

# Atualizar Pacotes
echo "==========================================================

        	ATUALIZANDO PACOTES

=========================================================="
sudo apt-get update && sudo apt-get upgrade -y
sudo apt autoremove -y
sudo apt install gnome-tweaks gnome-shell-extensions

# Snap
echo "==========================================================

        	INSTALANDO SNAP

=========================================================="
sudo apt update
sudo apt install snapd

# CURL
echo "==========================================================

        	INSTALANDO CURL

=========================================================="
sudo apt-get install curl -y

# Google Chrome
echo "==========================================================

        	INSTALANDO O GOOGLE CHROME

=========================================================="
cd ~/Downloads/ && wget -c https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && sudo dpkg -i *.deb

# VsCode
echo "==========================================================

        	INSTALANDO O VSCODE

=========================================================="
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor >microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo apt-get update
sudo apt-get install code

# Git
echo "==========================================================

        	INSTALANDO O GIT

=========================================================="
sudo apt update
sudo apt install git -y

# Docker via Snap
echo "==========================================================

        	INSTALANDO O DOCKER

=========================================================="
sudo apt-get remove docker docker-engine docker.io containerd runc -y
sudo apt-get update -y
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable" -y 
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io -y

# Yarn
echo "==========================================================

        	INSTALANDO O YARN

=========================================================="
sudo apt-get install gcc g++ make
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn -y

# Ruby
echo "==========================================================

        	INSTALANDO O RUBY

=========================================================="
sudo apt install curl
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt-get update
sudo apt-get install git-core zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev nodejs yarn -y

sudo apt-get install libgdbm-dev libncurses5-dev automake libtool bison libffi-dev -y
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
rvm install 2.7.0
rvm use 2.7.0 --default
ruby -v

gem install bundler

# Python
echo "==========================================================

        	INSTALANDO O PYTHON

=========================================================="
sudo apt update
sudo apt-get install python3.8 -y
python --version

# Pip
echo "==========================================================

        	INSTALANDO O PIP

=========================================================="
sudo apt install python3-pip3 -y 
sudo pip -V 
pip3 install robotframework
pip3 install robotframework-seleniumlibrary
pip3 install robotframework-databaselibrary
pip3 install robotframework-appiumlibrary
pip3 install robotframework-requests

# Chromedriver
echo "==========================================================

        	INSTALANDO O CHROMEDRIVER

=========================================================="
cd ~/Downloads/
wget https://chromedriver.storage.googleapis.com/80.0.3987.106/chromedriver_linux64.zip
sudo unzip chromedriver_linux64.zip
sudo mv chromedriver /usr/bin/chromedriver
sudo chown root:root /usr/bin/chromedriver
sudo chmod +x /usr/bin/chromedriver
chromedriver --version

#Geckodriver
echo "==========================================================

        	INSTALANDO O CHROMEDRIVER

=========================================================="
cd ~/Downloads/
wget https://github.com/mozilla/geckodriver/releases/download/v0.26.0/geckodriver-v0.26.0-linux64.tar.gz
sudo tar -xvf geckodriver-v0.26.0-linux64.tar.gz
sudo mv geckodriver /usr/local/bin/

# Stremio
echo "==========================================================

        	INSTALANDO O STREMIO

=========================================================="
cd ~/Downloads
sudo wget https://dl.strem.io/linux/v4.4.54/stremio_4.4.52-1_amd64.deb
sudo chmod 777 stremio_4.4.52-1_amd64.deb
sudo dpkg -i stremio_4.4.52-1_amd64.deb
sudo apt --fix-broken install -y

# Spotify
echo "==========================================================

        	INSTALANDO O SPOTIFY

=========================================================="
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add - 
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client -y
sudo apt --fix-broken install -y

# Finalizando
echo "==========================================================

        	FINALIZANDO INSTALAÇÕES

=========================================================="
sudo apt-get update
sudo apt-get upgrade -y 
sudo apt-get autoremove -y
Sudo reboot