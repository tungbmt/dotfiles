#!/bin/bash

# disable password
echo "`whoami` ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/`whoami` && \
sudo chmod 0440 /etc/sudoers.d/`whoami` &&

# update
sudo apt update && sudo apt upgrade -y;

# install package
sudo apt autoremove vim vim-tiny -y;
sudo apt install neovim tmux -y;

# install nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash;

# install node lts
. ~/.nvm/nvm.sh
. ~/.profile
. ~/.bashrc
nvm install --lts

# config tmux
cat >> ~/.tmux.conf << EOL
# remap prefix from 'C-b' to 'C-a'
unbind C-b
set-option -g prefix C-a
bind-key C-a send-prefix

# split panes using | and -
bind | split-window -h
bind - split-window -v
unbind '"'
unbind %

# switch panes using Alt-arrow without prefix
bind -n M-h select-pane -L
bind -n M-l select-pane -R
bind -n M-k select-pane -U
bind -n M-j select-pane -D

# Enable mouse mode (tmux 2.1 and above)
set -g mouse on
EOL
