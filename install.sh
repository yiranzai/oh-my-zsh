#!/bin/sh

DIR="$( cd "$( dirname "$0" )" && pwd )"

cp -R $DIR/vim $HOME/.vim
cp $DIR/vim/.vimrc  $HOME/.vimrc
cp $DIR/.zshrc  $HOME/.zshrc
vim +PluginInstall +qall
