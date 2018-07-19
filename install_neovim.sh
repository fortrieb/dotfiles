#!/bin/bash

NVIM_CONFIG=$HOME/.config/nvim

# Install missing dependencys to make NeoVim working
pip3 install --user neovim

echo "Get VIM Plug and create dir .vim/autoload"
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo "Link .vimrc file to ~/.vimrc"
if [ ! -d $NVIM_CONFIG ]
then
	mkdir -vp $NVIM_CONFIG
fi
	
echo "Linking config files"
ln -s $PWD/init.vim $NVIM_CONFIG/init.vim

echo "Run nvim with exec command"
nvim +PlugInstall +qall

if [ ! -f $HOME/.xprofile ]
then
	touch $HOME/.xprofile
fi
echo "Installation finished"
