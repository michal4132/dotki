#!/bin/sh

WALLPAPER_URL="https://i.redd.it/62ikzfntczr71.jpg"
wget $WALLPAPER_URL -O wallpaper.jpg

REPO_PATH=$(pwd)
sudo chsh $(whoami) -s /bin/zsh

sudo pacman -Sy zsh-syntax-highlighting git picom

# install xfdashboard
git clone https://aur.archlinux.org/xfdashboard.git
cd xfdashboard
makepkg -si


ln -fs $REPO_PATH/zshrc ~/.zshrc
ln -fs $REPO_PATH/gitconfig ~/.gitconfig
ln -fs $REPO_PATH/config ~/.config
ln -fs $REPO_PATH/config/picom.conf ~/.config/picom.conf
ln -fs $REPO_PATH/config/autostart/org.xfce.xfdashboard-autostart.desktop ~/.config/autostart/org.xfce.xfdashboard-autostart.desktop
mkdir -p ~/.config/xfce4/xfconf/xfce-perchannel-xml
ln -fs $REPO_PATH/config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml
ln -fs $REPO_PATH/config/xfce4/xfconf/xfce-perchannel-xml/xfdashboard.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfdashboard.xml
ln -fs $REPO_PATH/config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml
