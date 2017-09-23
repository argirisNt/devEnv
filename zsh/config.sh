# install oh-my-zsh
wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O oh-my-install.sh
sh oh-my-install.sh > /dev/null 2>&1

# clean up
rm oh-my-install.sh

# change shell to zsh permanently
chsh -s $(which zsh)

# install powerlevel10k
git clone --depth=1 https://gitee.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
# install nerdfont
mkdir -p $HOME/.local/share/fonts
(cd $HOME/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf)

fc-cache -fv

# copy powerlevel10 config
cp zsh/p10k.zsh $HOME/.p10k.zsh

# copy config to zshrc
cat zsh/zshrc >> $HOME/.zshrc

# create zprofile to initiate startx
cp zsh/zprofile $HOME/.zprofile
