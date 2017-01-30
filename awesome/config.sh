#!/bin/bash

CONFIG_DIR=$HOME/.config/awesome
AWESOME_VERSION=$(awesome -v | head -1 | cut -d' ' -f2)

mkdir $CONFIG_DIR

if [[ $AWESOME_VERSION =~ v3.4.* ]]; then
  cp -r awesome/awesome-3.4/* $CONFIG_DIR
elif [[ $AWESOME_VERSION =~ v4.0.* ]]; then
  cp -r awesome/awesome-4.0/* $CONFIG_DIR
fi

chmod +x $CONFIG_DIR/xscreensaver-reset-kbd-us.pl

git clone https://github.com/horst3180/arc-icon-theme --depth 1 $HOME/Downloads/arc-icon-theme
sudo cp -r $HOME/Downloads/arc-icon-theme/Arc /usr/share/icons
rm -r $HOME/Downloads/arc-icon-theme
