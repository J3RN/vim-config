""" Vundle
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle your vundle
Plugin 'gmarik/Vundle.vim'

Plugin 'vim-scripts/vim-auto-save'              " Auto-save
Plugin 'tpope/vim-git'                          " Vim-git
Plugin 'tpope/vim-surround'                     " Vim-surround
Plugin 'scrooloose/nerdtree.git',               " Nerdtree
Plugin 'kien/ctrlp.vim.git',                    " CTRL-p
Plugin 'scrooloose/syntastic.git',              " Syntastic
Plugin 'edkolev/tmuxline.vim.git',              " Tmuxline
Plugin 'bling/vim-airline.git',                 " Vim Airline
Plugin 'tpope/vim-bundler.git',                 " Bundler
Plugin 'kchmck/vim-coffee-script.git',          " Coffeescript
Plugin 'altercation/vim-colors-solarized.git',  " Solarized!
Plugin 'tpope/vim-endwise.git',                 " Endwise
Plugin 'tpope/vim-fugitive.git',                " Git support
Plugin 'tpope/vim-markdown.git',                " Markdown
Plugin 'tpope/vim-rails.git',                   " Rails!
Plugin 'slim-template/vim-slim.git',            " Slim
Plugin 'jiangmiao/auto-pairs.git'               " Auto pairing
Plugin 'kien/rainbow_parentheses.vim.git'       " Rainbow parenthesis

" End Vundle
call vundle#end()
