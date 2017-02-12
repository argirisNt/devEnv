# make vim directory
mkdir $HOME/.vim

# install powerline fonts
git clone https://github.com/powerline/fonts.git $HOME/.vim/fonts
(cd $HOME/.vim/fonts && ./install.sh)

# install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim

# copy vim config file
cp vim/vimrc $HOME/.vimrc

# install all plugins
vim -c 'PluginInstall' -c 'qa!'
