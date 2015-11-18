#! /bin/sh

function move_if_exists() {
  if [ -e $HOME/$1 ]; then
    echo "Moving ~/$1 to ~/$1.old"
    mv -f $HOME/$1 $HOME/$1.old
  fi
}

echo "Linking .vim directory..."
move_if_exists ".vim"
ln -si "$(pwd)/.vim" "$HOME"

echo "Linking .vimrc..."
move_if_exists ".vimrc"
ln -si "$(pwd)/.vimrc" "$HOME"

# Install Vundle
if [ ! -e "$HOME/.vim/bundle/Vundle.vim" ]; then
  echo "Installing Vundle"
  git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

echo "Installing plugins..."
vim +PluginInstall +qall

if hash nvim > /dev/null; then
  echo "Linking for NeoVim"
  move_if_exists ".nvimrc"
  ln -si $HOME/.vimrc $HOME/.nvimrc

  move_if_exists ".nvim"
  ln -si $HOME/.vim/ $HOME/.nvim

  echo "Installing NeoVim plugins..."
  nvim +PluginInstall +qall
fi

echo "All done! Enjoy!"
