#!/bin/bash

function move_if_exists() {
  if [ -e $HOME/$1 ]; then
    echo "Moving ~/$1 to ~/$1.old"
    mv -f $HOME/$1 $HOME/$1.old
  fi
}

pwd=$(pwd)

# Install Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

if type vim &> /dev/null; then
  # Link Vim items
  echo "Linking for Vim"

  move_if_exists ".vim"
  ln -si "$pwd/.vim" "$HOME"

  move_if_exists ".vimrc"
  ln -si "$pwd/.vimrc" "$HOME"

  echo "Installing plugins..."
  vim +PluginInstall +qall
fi

if hash nvim &> /dev/null; then
  # Link NeoVim items
  echo "Linking for NeoVim"

  move_if_exists ".config/nvim"
  ln -si $pwd/.vim $HOME/.config/nvim

  echo "Installing NeoVim plugins..."
  nvim +PluginInstall +qall
fi

echo "All done! Enjoy!"
