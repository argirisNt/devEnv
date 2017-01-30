#!/bin/bash

# init config dir
mkdir $HOME/.config

# config terminator
cp terminator/config $HOME/.config/terminator/config

# config ruby
/bin/bash ruby/config.sh

# config awesome window manager
/bin/bash awesome/config.sh

# set .xsession
cp xinitrc $HOME/.xinitrc

# git config
/bin/bash git/config.sh

# config tig
/bin/bash tig/config.sh

# config vim
/bin/bash vim/config.sh

# config FZF
git clone --depth 1 https://github.com/junegunn/fzf.git $HOME/.fzf
$HOME/.fzf/install

# config zsh
/bin/bash zsh/config.sh
