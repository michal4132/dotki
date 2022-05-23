#!/bin/sh

WALLPAPER_URL="https://i.redd.it/62ikzfntczr71.jpg"
REPO_PATH=$(pwd)

if [ "$1" = "full" ]
then
    echo "Full install"
    wget $WALLPAPER_URL -O wallpaper.jpg

    sudo chsh $(whoami) -s /bin/zsh

    sudo pacman -Sy zsh-syntax-highlighting git picom

    # TODO: fix xfdashboard quicklaunch
    # install xfdashboard
    git clone https://aur.archlinux.org/xfdashboard.git
    cd xfdashboard
    makepkg -si
    cd ..
fi

ln -fs $REPO_PATH/zshrc ~/.zshrc
ln -fs $REPO_PATH/gitconfig ~/.gitconfig
ln -fs $REPO_PATH/config ~/.config
ln -fs $REPO_PATH/config/picom.conf ~/.config/picom.conf
ln -fs $REPO_PATH/config/autostart/org.xfce.xfdashboard-autostart.desktop ~/.config/autostart/org.xfce.xfdashboard-autostart.desktop

pkill xfconfd

# xfce panel
mkdir -p ~/.config/xfce4/xfconf/xfce-perchannel-xml
ln -fs $REPO_PATH/config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml
ln -fs $REPO_PATH/config/xfce4/xfconf/xfce-perchannel-xml/xfdashboard.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfdashboard.xml
ln -fs $REPO_PATH/config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml ~/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-desktop.xml
xfce4-panel -r

# xfdashboard theme
mkdir -p ~/.themes/gnome/xfdashboard-1.0
ln -fs $REPO_PATH/themes/gnome/xfdashboard-1.0/animations.xml ~/.themes/gnome/xfdashboard-1.0/animations.xml
ln -fs $REPO_PATH/themes/gnome/xfdashboard-1.0/effects.xml ~/.themes/gnome/xfdashboard-1.0/effects.xml
ln -fs $REPO_PATH/themes/gnome/xfdashboard-1.0/screenshot-xfdashboard-gnome.png ~/.themes/gnome/xfdashboard-1.0/screenshot-xfdashboard-gnome.png
ln -fs $REPO_PATH/themes/gnome/xfdashboard-1.0/xfdashboard.css ~/.themes/gnome/xfdashboard-1.0/xfdashboard.css
ln -fs $REPO_PATH/themes/gnome/xfdashboard-1.0/xfdashboard-gnome.css ~/.themes/gnome/xfdashboard-1.0/xfdashboard-gnome.css
ln -fs $REPO_PATH/themes/gnome/xfdashboard-1.0/xfdashboard-secondary.xml ~/.themes/gnome/xfdashboard-1.0/xfdashboard-secondary.xml
ln -fs $REPO_PATH/themes/gnome/xfdashboard-1.0/xfdashboard.theme ~/.themes/gnome/xfdashboard-1.0/xfdashboard.theme
ln -fs $REPO_PATH/themes/gnome/xfdashboard-1.0/xfdashboard.xml ~/.themes/gnome/xfdashboard-1.0/xfdashboard.xml

