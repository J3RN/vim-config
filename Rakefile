pathogen_list = [
  'https://github.com/scrooloose/nerdtree.git',               # Nerdtree
  'https://github.com/kien/ctrlp.vim.git',                    # CTRL-p
  'https://github.com/scrooloose/syntastic.git',              # Syntastic
  'https://github.com/edkolev/tmuxline.vim.git',              # Tmuxline
  'https://github.com/bling/vim-airline.git',                 # Vim Airline
  'https://github.com/tpope/vim-bundler.git',                 # Bundler
  'https://github.com/kchmck/vim-coffee-script.git',          # Coffeescript
  'https://github.com/altercation/vim-colors-solarized.git',  # Solarized!
  'https://github.com/tpope/vim-endwise.git',                 # Endwise
  'https://github.com/tpope/vim-fugitive.git',                # Git support
  'https://github.com/tpope/vim-markdown.git',                # Markdown
  'https://github.com/tpope/vim-rails.git',                   # Rails!
  'https://github.com/slim-template/vim-slim.git'             # Slim
]

# Create the pathogen directories
puts `mkdir ~/.vim`
puts `mkdir ~/.vim/bundle && mkdir ~/.vim/autoload`

# Install pathogen
puts `curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim`

# Install all pathogen items
puts `cd ~/.vim/bundle`
pathogen_list.each do |item|
  puts `git clone #{item}`
end
