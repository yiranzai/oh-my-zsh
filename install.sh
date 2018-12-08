#!/bin/sh
#DIR="$( cd "$( dirname "$0" )" && pwd )"
cp -R $PWD/vim $HOME/.vim
cp $PWD/vim/.vimrc  $HOME/.vimrc
cp $PWD/.zshrc  $HOME/.zshrc
sh $HOME/.oh-my-zsh/fonts/install.sh
vim +PluginInstall +qall
echo " -----------------------------warning-------------------------"
echo "|   The installation is successful, please execute            |"
echo "|                                            source ~/.zshrc  |"
echo " -------------------------------end---------------------------"
