""" Vundle
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Vundle your vundle
Plugin 'gmarik/Vundle.vim'

" Aesthetics
Plugin 'bling/vim-airline'                " Vim Airline
Plugin 'edkolev/tmuxline.vim'             " Tmuxline

" Parenthesis
Plugin 'jiangmiao/auto-pairs'             " Auto pairing
Plugin 'luochen1990/rainbow'              " New rainbow parenthesis
Plugin 'tpope/vim-surround'               " Vim-surround

" Git-related stuff
Plugin 'tpope/vim-git'                    " Vim-git
Plugin 'tpope/vim-fugitive'               " Git tools in Vim
Plugin 'airblade/vim-gitgutter'           " Git gutter. It's cool!

" Laguage-Specific improvments (syntax highlighting, etc)
Plugin 'kchmck/vim-coffee-script'         " Coffeescript
Plugin 'slim-template/vim-slim'           " Slim
Plugin 'tpope/vim-markdown'               " Markdown
Plugin 'Slava/vim-spacebars'              " Spacebars
Plugin 'othree/html5.vim'                 " HTML5
Plugin 'keith/rspec.vim'                  " RSpec
Plugin 'rust-lang/rust.vim'               " Rust
Plugin 'dag/vim-fish'                     " Fish
Plugin 'elixir-lang/vim-elixir'           " Elixir
Plugin 'digitaltoad/vim-jade'             " Jade
Plugin 'zah/nim.vim'                      " Nim

" Other excellent things
Plugin 'scrooloose/nerdtree'              " Nerdtree
Plugin 'scrooloose/syntastic'             " Syntastic
Plugin 'tpope/vim-bundler'                " Bundler
Plugin 'tpope/vim-endwise'                " Endwise
Plugin 'tpope/vim-rails'                  " Rails
Plugin 'tpope/vim-commentary'             " Easy commenting
Plugin 'kien/ctrlp.vim'                   " Quick file finding
Plugin 'rking/ag.vim'                     " Silver searcher in Vim
Plugin 'rizzatti/dash.vim'                " Launch Dash from Vim
Plugin 'janko-m/vim-test'                 " Support for various testing frameworks
Plugin 'ervandew/supertab'                " Better tab-completion
Plugin 'tpope/vim-dispatch'               " Run tests async
" Plugin 'junegunn/fzf.vim'                " Better searching

" Color schemes
Plugin 'reedes/vim-colors-pencil' " iA Writer color scheme

" End Vundle
call vundle#end()
