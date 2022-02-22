function mvsym
      set -x DOTFILES_DIR ~/ghq/github.com/Ras96/dotfiles
      set -x ARG_FILE $argv[1]
      mv ~/$ARG_FILE $DOTFILES_DIR/$ARG_FILE
      ln -s $DOTFILES_DIR/$ARG_FILE ~/$ARG_FILE
end
