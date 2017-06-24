#!/bin/bash

echo "Get VIM Plug and create dir ~/.local/share/nvim/site/autoload"
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo "Link init.vim file to ~/.config/nvim/init.vim"
mkdir -vp $HOME/.config/nvim
ln -s $PWD/init.vim $HOME/.config/nvim/init.vim

echo "Run neovim with exec command"
nvim +PlugInstall +qall

if [ ! -f $HOME/.xprofile ]
then
	touch $HOME/.xprofile
fi
echo "Installation finished"
