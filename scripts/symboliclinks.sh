#!/bin/sh

DOTFILES_DIR=~/ghq/github.com/Ras96/dotfiles

mkdir -p $HOME/.vscode-server/data/Machine

ln -s $DOTFILES_DIR/.config $HOME/.config
ln -s $DOTFILES_DIR/.wincmd $HOME/.wincmd
ln -s $DOTFILES_DIR/.gitconfig $HOME/.gitconfig
ln -s $DOTFILES_DIR/.golangci.yml $HOME/.golangci.yml
ln -s $DOTFILES_DIR/.prettierrc.yml $HOME/.prettierrc.yml
ln -s $DOTFILES_DIR/.tool-versions $HOME/.tool-versions
ln -s $DOTFILES_DIR/.vimrc $HOME/.vimrc
ln -s $DOTFILES_DIR/.wslconfig $HOME/.wslconfig
ln -s $DOTFILES_DIR/.vscode-server/data/Machine/settings.json $HOME/.vscode-server/data/Machine/settings.json
ln -s $DOTFILES_DIR/.Brewfile $HOME/.Brewfile
ln -s $DOTFILES_DIR/.night-owl.my.omp.json $HOME/.night-owl.my.omp.json
