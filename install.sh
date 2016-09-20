#!/bin/bash

echo "Get VIM Plug and create dir .vim/autoload"
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
echo "Link .vimrc file to ~/.vimrc"
ln -s $PWD/.vimrc $HOME/.vimrc
echo "Run vim with exec command"
vim +PlugInstall +qall

if [ ! -f $HOME/.xprofile ]
then
	touch $HOME/.xprofile
fi
echo "Installation finished"
