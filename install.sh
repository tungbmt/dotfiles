#!/bin/bash

# disable password
# echo "`whoami` ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/`whoami` && \
# sudo chmod 0440 /etc/sudoers.d/`whoami` &&

# add neovim ppa to install neovim version >= 0.5
# TODO: remove when stable version >= 0.5
sudo add-apt-repository ppa:neovim-ppa/unstable

# update
sudo apt update && sudo apt upgrade -y

# install package
sudo apt autoremove vim vim-tiny -y
sudo apt install neovim tmux peco ripgrep build-essential -y

# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

# install node lts
. ~/.nvm/nvm.sh
. ~/.profile
. ~/.bashrc
nvm install --lts

mkdir -p ~/.config

git clone git@github.com:tungbmt/wsl-setup.git
cd ./wsl-setup

cat ./.bash_aliases >> ~/.bash_aliases
cd ./.config
cp -r nvim tmux ~/.config

cd ..
cp ./.tmux.conf ~/

# neovim setup
# install neovim package manager
git clone https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

echo "RUN: npm install -g typescript typescript-language-server"


