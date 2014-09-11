""" Rails has forced me to love spaces
set tabstop=2
set shiftwidth=2
set expandtab

""" Line numbers are pretty great
set nu

""" TMUX fix
if $TMUX == ''
  set clipboard+=unnamed
endif

""" People told me to
set nocompatible

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
Plugin 'altercation/vim-colors-solarized.git'   " Solarized theme

" End Vundle
call vundle#end()

""" Enable Auto-save on startup
let g:auto_save = 1

""" Highlight current line
set cursorline
hi CursorLine cterm=NONE ctermbg=white guibg=white

""" Custom search stuff
set ignorecase
set incsearch
set hlsearch

""" This seems interesting
set ruler

""" Show when I go over 80 characters
if exists('+colorcolumn')
  set colorcolumn=80
endif

""" Show the current mode. Just cuz
set showmode

""" Unix line endings. Seriously, people.
set fileformat=unix

""" No line wrapping
set nowrap

""" Syntax Highlighting
syntax on

""" Solarized color scheme
"""let g:solarized_termcolors=16
set background=dark
colo solarized

""" Enable the filetype plugin and indenting
filetype plugin indent on

""" Enable airline bar all the time
set laststatus=2

""" Enable powerline font for airline
let g:airline_powerline_fonts = 1

""" Set vim to use 256 colors (Tmux/Vim Airline fix)
set t_Co=256

""" Set NERDTree to toggle on CTRL-n
map <C-n> :NERDTreeToggle<CR>

""" Needed as I use fish
set shell=/bin/zsh

""" I was told all the cool kids did it
:imap jk <Esc>

""" Set spell checking
setlocal spell spelllang=en_us
""" Except for Ruby
autocmd FileType ruby,coffee,haml,slim,scss set nospell

""" RainbowParentheses
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

""" Trailing whitespace highlighting
highlight ExtraWhitespace ctermbg=red guibg=red
au ColorScheme * highlight ExtraWhitespace guibg=red
au BufEnter * match ExtraWhitespace /\s\+$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhiteSpace /\s\+$/

" Auto complete HTML tags
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
:imap <lt>/ </<C-X><C-O>

""" Set GUI font for MacVim
set guifont=Sauce\ Code\ Powerline:h12

""" Have Syntastic understand AngularJS
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]

""" Custom Vim Rails additions
let g:rails_projections = {
      \ "spec/factories/*.rb":  {"command": "factory"},
      \ "config/*":             { "command": "config" },
      \ "Gemfile":              {"command": "gemfile"},
      \ "Guardfile":            {"command": "guardfile"}}

""" Custom Tmuxline preset
let g:tmuxline_preset = {
        \'a'       : '#S',
        \'b'       : ['#I:#P','#F'],
        \'win'       : ['#I', '#W'],
        \'cwin'       : ['#I', '#W'],
        \'y'       : "#(~/tmux_battery_indicator.sh)",
        \'z'       : '%H:%M %d-%b-%y',
        \'options' : {'status-justify' : 'left'}}
