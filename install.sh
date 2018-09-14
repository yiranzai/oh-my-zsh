#!/bin/sh

DIR="$( cd "$( dirname "$0" )" && pwd )"

cp -R $DIR/vim $HOME/.vim
cp $DIR/vim/.vimrc  $HOME/.vimrc
cp $DIR/.zshrc  $HOME/.zshrc
sh $HOME/.oh-my-zsh/fonts
vim +PluginInstall +qall
echo " -----------------------------warning-------------------------"
echo "|   The installation is successful, please execute            |"
echo "|                                            source ~/.zshrc  |"
echo " -------------------------------end---------------------------"
