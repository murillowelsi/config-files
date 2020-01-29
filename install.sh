#!/bin/bash

## Removendo travas eventuais do apt ##

sudo rm /var/lib/dpkg/lock-frontend ; sudo rm /var/cache/apt/archives/lock ;

echo "==========================================================

           INSTALAÇÃO DE PACOTES DO VAGABUNDO

=========================================================="

# Atualizar Pacotes
echo "==========================================================

        	ATUALIZANDO PACOTES

=========================================================="
sudo apt-get update && sudo apt-get upgrade -y
sudo apt autoremove -y

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

        	INSTALANDO O DOCKER VIA SNAP

=========================================================="
sudo snap install docker

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
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt-get update
sudo apt-get install git-core zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev nodejs yarn -y

cd
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(rbenv init -)"' >> ~/.bashrc
source ~/.bashrc

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

rbenv install 2.6.5
rbenv global 2.6.5
ruby -v

gem install bundler

# Stremio
echo "==========================================================

        	INSTALANDO O STREMIO

=========================================================="
cd ~/Downloads
sudo wget https://dl.strem.io/linux/v4.4.54/stremio_4.4.52-1_amd64.deb
sudo chmod 777 stremio_4.4.52-1_amd64.deb
sudo dpkg -i stremio_4.4.52-1_amd64.deb
sudo apt --fix-broken install -y

# Slack
echo "==========================================================

        	INSTALANDO O SLACK

=========================================================="
cd ~/Downloads
sudo wget https://downloads.slack-edge.com/linux_releases/slack-desktop-4.2.0-amd64.deb
sudo chmod 777 slack-desktop-4.2.0-amd64.deb
sudo dpkg -i slack-desktop-4.2.0-amd64.deb
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

## Atualização do sistema ##

sudo apt update && sudo apt dist-upgrade -y && sudo apt autoclean -y && sudo apt autoremove -y &&
