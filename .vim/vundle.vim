""" Vundle
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle your vundle
Plugin 'gmarik/Vundle.vim'

" Aesthetics
Plugin 'bling/vim-airline'        " Vim Airline
Plugin 'edkolev/tmuxline.vim'     " Tmuxline

" Parenthesis
Plugin 'jiangmiao/auto-pairs'     " Auto pairing
Plugin 'luochen1990/rainbow'      " New rainbow parenthesis
Plugin 'tpope/vim-surround'       " Vim-surround

" Git-related stuff
Plugin 'tpope/vim-git'            " Vim-git
Plugin 'tpope/vim-fugitive'       " Git tools in Vim
Plugin 'airblade/vim-gitgutter'   " Git gutter. It's cool!

" Laguage-Specific improvments (syntax highlighting, etc)
Plugin 'kchmck/vim-coffee-script' " Coffeescript support
Plugin 'slim-template/vim-slim'   " Slim support
Plugin 'tpope/vim-markdown'       " Markdown support
Plugin 'Slava/vim-spacebars'      " Spacebars support
Plugin 'othree/html5.vim'         " Better HTML5 support
Plugin 'keith/rspec.vim'          " RSpec support
Plugin 'rust-lang/rust.vim'       " Rust support
Plugin 'dag/vim-fish'             " Fish support
Plugin 'elixir-lang/vim-elixir'   " Elixir support
Plugin 'digitaltoad/vim-jade'     " Jade support

" Other excellent things
Plugin 'scrooloose/nerdtree'      " Nerdtree
Plugin 'scrooloose/syntastic'     " Syntastic
Plugin 'tpope/vim-bundler'        " Bundler
Plugin 'tpope/vim-endwise'        " Endwise
Plugin 'tpope/vim-rails'          " Rails
Plugin 'tpope/vim-commentary'     " Easy commenting
Plugin 'kien/ctrlp.vim'           " Quick file finding
Plugin 'rking/ag.vim'             " Silver searcher in Vim
Plugin 'rizzatti/dash.vim'        " Launch Dash from Vim
Plugin 'janko-m/vim-test'         " Support for various testing frameworks

" End Vundle
call vundle#end()
