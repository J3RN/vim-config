#! /bin/zsh

green_print() {
  echo "\e[1;32m$1\e[0m"
}

# Link .vim
echo "Linking .vim directory..."

if [ -e "$HOME/.vim" ]; then
  green_print "Moving ~/.vim directory to ~/.vim.old"
  mv -f "$HOME/.vim" "$HOME/.vim.old"
fi

ln -si "$(pwd)/.vim" "$HOME"

# Install Vundle
if [ ! -e "$HOME/.vim/bundle/Vundle.vim" ]; then
  green_print "Installing Vundle"
  git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

# Link .vimrc
echo "Linking .vimrc..."

if [ -e "$HOME/.vimrc" ]; then
  green_print "Moving your ~/.vimrc to ~/.vimrc.old"
  mv -f "$HOME/.vimrc" "$HOME/.vimrc.old"
fi

ln -si "$(pwd)/.vimrc" "$HOME"

echo "Installing plugins..."
vim +PluginInstall +qall

green_print "All done! Enjoy!"
