#!/bin/sh

DOTFILES_REPO=Ras96/dotfiles
DOTFILES_DIR=$(ghq root)/$DOTFILES_REPO

mkdir -p $HOME/.config/
mkdir -p $HOME/.vscode-server/data/Machine/

ln -sf $DOTFILES_DIR/.config/bat $HOME/.config/bat
ln -sf $DOTFILES_DIR/.config/fish $HOME/.config/fish
ln -sf $DOTFILES_DIR/.config/gitmoji-nodejs $HOME/.config/gitmoji-nodejs
ln -sf $DOTFILES_DIR/.config/yarn $HOME/.config/yarn
ln -sf $DOTFILES_DIR/.wincmd $HOME/.wincmd
ln -sf $DOTFILES_DIR/.gitconfig $HOME/.gitconfig
ln -sf $DOTFILES_DIR/.golangci.yml $HOME/.golangci.yml
ln -sf $DOTFILES_DIR/.prettierrc.yml $HOME/.prettierrc.yml
ln -sf $DOTFILES_DIR/.tool-versions $HOME/.tool-versions
ln -sf $DOTFILES_DIR/.vimrc $HOME/.vimrc
ln -sf $DOTFILES_DIR/.wslconfig $HOME/.wslconfig
ln -sf $DOTFILES_DIR/.vscode-server/data/Machine/settings.json $HOME/.vscode-server/data/Machine/settings.json
