#!/bin/sh

DOTFILES_REPO=Ras96/dotfiles
DOTFILES_DIR=$(ghq root)/$DOTFILES_REPO

ln -s $DOTFILES_DIR/.config/bat $HOME/.config/bat
ln -s $DOTFILES_DIR/.config/fish $HOME/.config/fish
ln -s $DOTFILES_DIR/.config/gitmoji-nodejs $HOME/.config/gitmoji-nodejs
ln -s $DOTFILES_DIR/.config/yarn $HOME/.config/yarn
ln -s $DOTFILES_DIR/.wincmd $HOME/.wincmd
ln -s $DOTFILES_DIR/.gitconfig $HOME/.gitconfig
ln -s $DOTFILES_DIR/.golangci.yml $HOME/.golangci.yml
ln -s $DOTFILES_DIR/.prettierrc.yml $HOME/.prettierrc.yml
ln -s $DOTFILES_DIR/.tool-versions $HOME/.tool-versions
ln -s $DOTFILES_DIR/.vimrc $HOME/.vimrc
ln -s $DOTFILES_DIR/.wslconfig $HOME/.wslconfig
ln -s $DOTFILES_DIR/.vscode-server/data/Machine/settings.json $HOME/.vscode-server/data/Machine/settings.json