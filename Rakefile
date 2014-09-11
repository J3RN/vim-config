task :default do
  # Install Vundle
  puts `$ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

  # Ask before clobbering
  if File.exists("~/.vimrc")
    puts "You have an existing vimrc. Do you want to overwrite it?"
    if gets[0].downcase == "n"
      system.exit(1)
    end
  end

  # Link my Vimrc into your home directory
  puts `ln -s ./.vimrc ~/.vimrc`

  # Install plugins
  puts `vim +PluginInstall +qall`
end
