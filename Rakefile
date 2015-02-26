task :default do
  unless File.exists? File.expand_path("~/.vim/bundle/Vundle.vim")
    # Install Vundle
    puts "Installing Vundle..."
    `git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim`
  end

  # Moving .vim
  puts "Copying .vim directory"
  `cp -R ./.vim/* ~/.vim/`

  # Warn about moving vimrc
  if File.exists? File.expand_path("~/.vimrc")
    puts "You have an existing vimrc. It is being moved to .vimrc.old"
    `mv ~/.vimrc ~/.vimrc.old`
  end

  # Put my Vimrc into your home directory
  puts "Inserting Vimrc..."
  `cp .vimrc ~/`

  # Install plugins
  puts "Installing plugins..."
  Kernel.system("vim +PluginInstall +qall")

  puts "Please read the You Complete Me docs to finish the install"
  Kernel.system("open https://github.com/Valloric/YouCompleteMe#faq")

  puts "All done! Enjoy!"
end
