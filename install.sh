#!/bin/sh

REPO_PATH=$(pwd)
sudo chsh $(whoami) -s /bin/zsh

sudo pacman -Sy zsh-syntax-highlighting

ln -s $REPO_PATH/zshrc ~/.zshrc
ln -s $REPO_PATH/gitconfig ~/.gitconfig
