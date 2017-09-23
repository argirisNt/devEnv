#!/usr/bin/env bash

# install rbenv
git clone https://github.com/rbenv/rbenv.git $HOME/.rbenv
(cd $HOME/.rbenv && $HOME/.rbenv/src/configure && make -C src)

# install ruby-build
git clone https://github.com/rbenv/ruby-build.git $HOME/.rbenv/plugins/ruby-build

# add rbenv to path
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> $HOME/.bashrc
echo 'eval "$(rbenv init -)"' >> $HOME/.bashrc
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> $HOME/.zshrc
echo 'eval "$(rbenv init -)"' >> $HOME/.zshrc

