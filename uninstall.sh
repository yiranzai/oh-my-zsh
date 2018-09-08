#!/bin/sh

DIR="$( cd "$( dirname "$0" )" && pwd )"
cd ../
rm -rf  "$HOME/.vim"
rm -f  "$HOME/.vimrc"
rm -f  "$HOME/.zshrc"
rm -rf  "$DIR"
