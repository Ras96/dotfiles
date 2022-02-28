#!/bin/sh

DOTFILES_REPO=/home/ras/ghq/github.com/Ras96/dotfiles
DOTFILES_REPO_URL=https://github.com/Ras96/dotfiles.git

# セットアップ & 基本コマンドのインストール
yes | sudo apt update
yes | sudo apt upgrade
yes | sudo add-apt-repository ppa:git-core/ppa
yes | sudo apt install build-essential curl file git procps

# brewのインストール
if !(type "brew" > /dev/null 2>&1); then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
  PATH=$PATH:/home/linuxbrew/.linuxbrew/bin
fi

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
  node \
  oh-my-posh \
  tig \
  yarn
  
if !(type "rustc" > /dev/null 2>&1); then
  curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
fi

# レポジトリのクローン
ghq get $DOTFILES_REPO_URL

# シンボリックリンクを貼る
$DOTFILES_REPO/scripts/symboliclinks.sh

# wsl.confのコピー
sudo cp $DOTFILES_REPO/wsl.conf /etc/wsl.conf

# asdfプラグインのインストール
cat ~/.tool-versions | awk '{print "asdf plugin add " $1}' | sh
asdf install

sudo sh -c "echo $(which fish) >> /etc/shells"
sudo chsh -s $(which fish)
