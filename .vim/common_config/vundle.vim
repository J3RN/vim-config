""" Vundle
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle your vundle
Plugin 'gmarik/Vundle.vim'

Plugin 'vim-scripts/vim-auto-save'              " Auto-save
Plugin 'scrooloose/nerdtree'                    " Nerdtree
Plugin 'scrooloose/syntastic'                   " Syntastic
Plugin 'edkolev/tmuxline.vim'                   " Tmuxline
Plugin 'bling/vim-airline'                      " Vim Airline
Plugin 'kchmck/vim-coffee-script'               " Coffeescript
Plugin 'tpope/vim-bundler'                      " Bundler
Plugin 'tpope/vim-git'                          " Vim-git
Plugin 'tpope/vim-surround'                     " Vim-surround
Plugin 'tpope/vim-endwise'                      " Endwise
Plugin 'tpope/vim-fugitive'                     " Git support
Plugin 'tpope/vim-markdown'                     " Markdown
Plugin 'tpope/vim-rails'                        " Rails!
Plugin 'tpope/vim-commentary'                   " Easy commenting
Plugin 'slim-template/vim-slim'                 " Slim
Plugin 'jiangmiao/auto-pairs'                   " Auto pairing
Plugin 'kien/ctrlp.vim'                         " CTRL-p
Plugin 'luochen1990/rainbow'                    " New rainbow parenthesis
Plugin 'elixir-lang/vim-elixir'                 " Elixir support
" Plugin 'Valloric/YouCompleteMe'               " Autocompletion
Plugin 'digitaltoad/vim-jade.git'               " Jade syntax highlighting

" End Vundle
call vundle#end()
