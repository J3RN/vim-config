task :default do
  # Moving .vim
  puts "Copying .vim directory"
  `cp -r .vim ~/.vim`

  # Install Vundle
  puts "Installing Vundle..."
  `git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

  # Ask before clobbering
  if File.exists?("~/.vimrc")
    puts "You have an existing vimrc. Do you want to overwrite it?"
    if gets[0].downcase == "n"
      system.exit(1)
    end
  end

  # Link my Vimrc into your home directory
  puts "Inserting Vimrc..."
  `cp .vimrc ~/`

  # Install plugins
  puts "Installing plugins..."
  `vim +PluginInstall +qall`

  puts "All done! Enjoy!"
end
