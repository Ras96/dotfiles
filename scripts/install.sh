#!/bin/sh

DOTFILES_REPO=Ras96/dotfiles
DOTFILES_REPO_URL=git@github.com:$DOTFILES_REPO.git

# セットアップ & 基本コマンドのインストール
yes | sudo apt update
yes | sudo apt upgrade
yes | sudo add-apt-repository ppa:git-core/ppa
yes | sudo apt install build-essential curl file git procps

# brewのインストール
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"

# 各種ツールのインストール
# なるべくbrewで入れるようにする
brew tap jandedobbeleer/oh-my-posh
brew install \
  asdf \
  bat \
  fish \
  fzf \
  gh \
  ghq \
  git-delta \
  gitmoji \
  go \
  jq \
  live-server \
  oh-my-posh \
  yarn
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# レポジトリのクローン
ghq get $DOTFILES_REPO_URL

# wsl.confのコピー
sudo cp $(ghq root)/$DOTFILES_REPO/wsl.conf /etc/wsl.conf

# asdfプラグインのインストール
cat ~/.tool-versions | awk '{print "asdf plugin add " $1}' | sh
asdf install

# シンボリックリンクを貼る
source $DOTFILES_REPO/scripts/symboliclinks.sh

sudo sh -c "echo $(which fish) >> /etc/shells"
sudo chsh -s $(which fish)
