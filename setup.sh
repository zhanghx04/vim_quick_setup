#!/bin/bash

# Copy the vimrc file to home directory
echo Copying vimrc to home directory as .vimrc
cp ./vimrc ${HOME}/.vimrc

# Create files if not exist
if [ ! -d ${HOME}/.vim/autoload ]; then
  mkdir -p ${HOME}/.vim/autoload;
fi
if [ ! -d ${HOME}/.vim/backup ]; then
  mkdir -p ${HOME}/.vim/backup;
fi
if [ ! -d ${HOME}/.vim/colors ]; then
  mkdir -p ${HOME}/.vim/colors;
fi
if [ ! -d ${HOME}/.vim/plugged ]; then
  mkdir -p ${HOME}/.vim/plugged;
fi

# Download theme: Molokai
echo Downloading theme [Molokai]
curl -o ${HOME}/.vim/colors/molokai.vim https://raw.githubusercontent.com/tomasr/molokai/master/colors/molokai.vim


echo Vim settings finished!