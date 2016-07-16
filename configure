#!/bin/bash

PWD=$(pwd)

mkdir $PWD/.vim
ls -a | grep vim | xargs -I % ln -s $PWD/% $HOME/%

git clone http://github.com/gmarik/vundle.git $HOME/.vim/bundle/vundle

vim +BundleInstall +BundleClean +qall
