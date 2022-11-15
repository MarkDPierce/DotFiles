#!/usr/bin/env bash



# Setup Vim directories
mkdir ~/.vim/backups
mkdir ~/.vim/swaps
mkdir ~/.vim/undo

apt-get update && apt-get upgrade
apt install \
    zsh \
    htop \
    curl \
    git \
    unzip \
    vim \

chsh -s /bin/zsh

# install starship
curl -sS https://starship.rs/install.sh | sh
