""" Load Vundle plugins
runtime! common_config/*.vim

""" Rails has forced me to love spaces
set tabstop=2
set shiftwidth=2
set expandtab

""" Set leader to ,
let mapleader=","

""" FileType tabbing settings
autocmd FileType javascript setlocal shiftwidth=4 tabstop=4
autocmd FileType python setlocal shiftwidth=4 tabstop=4

""" Line numbers are pretty great
set nu

""" TMUX fix
if $TMUX == ''
  set clipboard+=unnamed
endif

""" Keep cursor centered in screen
set scrolloff=5

""" Who needs vi compatibility anyways?
set nocompatible

""" Custom search stuff
set ignorecase  " Ignore case of searches
set smartcase   " Used with above to only ignore sometimes
set incsearch   " C-r C-w to complete search term
set hlsearch    " Highlight search

""" Show where the 80 character limit is (except for JavaScript)
if exists('+colorcolumn')
  if &ft ==? "javascript"
    set colorcolumn=120
  else
    set colorcolumn=80
  endif
endif

""" Unix line endings
set fileformat=unix

""" No line wrapping
set nowrap

""" Syntax Highlighting
syntax on

""" Enable the filetype plugin and indenting
filetype plugin indent on

""" Set vim to use 256 colors (Tmux/Vim Airline fix)
set t_Co=256

""" Zsh for general compatibility
set shell=/bin/zsh

""" I was told all the cool kids did it
inoremap jk <Esc>

""" Easier system for clearing searches
nnoremap <Leader>s :noh<CR>

""" Copy to system clipboard easily
vnoremap <Leader>y "+y

""" Quit all with CTRL-c
noremap <C-c> :q<CR>

""" Easily convert a line to all-uppercase
nnoremap <Leader>u VU
inoremap <Leader>u <ESC>VUA

""" Folding
set fdm=indent                        " Fold on indent, naturally
au FileType gitcommit set fdm=manual  " Why would you fold gitcommits?
" All folds open by default
au BufRead * normal zR

""" Better color scheme for diffing
au FilterWritePre * if &diff | colorscheme sol | endif
au FilterWritePost * colorscheme default

""" Settings specific to Markdown editing
autocmd FileType markdown setlocal spell spelllang=en_us
autocmd FileType markdown setlocal wrap
autocmd FileType markdown setlocal linebreak
autocmd FileType markdown setlocal colorcolumn=0

""" Moving around in texy files
nnoremap j gj
nnoremap k gk

""" Trailing whitespace

" Highlighting
highlight ExtraWhitespace ctermbg=red guibg=red
au ColorScheme * highlight ExtraWhitespace guibg=red
au BufEnter * match ExtraWhitespace /\s\+$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhiteSpace /\s\+$/

" Delete extra whitespace
nnoremap <Leader>-d :%s/\s\+$//<CR>

""" Completion

" Omnicompletion based on syntax
set omnifunc=syntaxcomplete#Complete

" Auto complete HTML tags
inoremap <lt>/<TAB> </<C-X><C-O><ESC>V=%a

""" Easy saving with CTRL-s
nnoremap <C-s> :w<CR>
inoremap <C-s> <ESC>:w<CR>
vnoremap <C-s> <ESC>:w<CR>

""" Set GUI font for MacVim
set guifont=Ubuntu\ Mono\ Powerline:h12

""" Correct inside HTML tag
nnoremap <Leader>c 0f><Right>ct<

""" Terminal

" Open terminal with <Leader>t
if has("nvim")
  nnoremap <Leader>t <ESC>:term<CR>

  " Escape terminal with jk
  tnoremap jk <C-\><C-n>
else
  nnoremap <Leader>t <ESC>:shell
endif

""" Plugin configs

" Set NERDTree to toggle on CTRL-n
noremap <C-n> :NERDTreeToggle<CR>

" Enable airline bar all the time
set laststatus=2

" NERDTree show hidden files
let NERDTreeShowHidden=1

" Because Fugitive commands are a lot to type
nnoremap <Leader>g :Gstatus<CR>

" Linux version
nnoremap <Leader>p :Gpush<CR>

" Enable powerline font for airline
let g:airline_powerline_fonts = 1

" Rainbow parenthesis
let g:rainbow_active = 1

let g:rainbow_conf = {
      \   'guifgs': ['royalblue3', 'seagreen3', 'darkorchid3', 'firebrick3'],
      \   'ctermfgs': ['darkcyan', 'magenta', 'green', 'darkred', 'darkmagenta', 'darkgray'],
      \   'operators': '_,_',
      \   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
      \   'separately': {
      \       '*': {},
      \       'tex': {
      \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
      \       },
      \       'lisp': {
      \           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
      \       },
      \       'vim': {
      \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
      \       },
      \       'css': 0,
      \       'html': 0,
      \   }
      \}

" Custom Vim Rails additions
let g:rails_projections = {
      \ "spec/factories/*.rb":  {"command": "factory"},
      \ "config/*":             {"command": "cnf" }}

" Custom Tmuxline preset
let g:tmuxline_preset = {
        \'a'       : '#S',
        \'b'       : ['#I:#P','#F'],
        \'win'       : ['#I', '#W'],
        \'cwin'       : ['#I', '#W'],
        \'y'       : "#(~/.vim/.tmux_battery_indicator.sh)",
        \'z'       : '%H:%M %d-%b-%y',
        \'options' : {'status-justify' : 'left'}}

" Have Syntastic understand AngularJS and Meteor
let g:syntastic_html_tidy_ignore_errors=[
      \ " proprietary attribute \"ng-",
      \ "<template> is not recognized!",
      \ "discarding unexpected <template>",
      \ "discarding unexpected </template>"]

let syntastic_mode_map = { 'passive_filetypes': ['html'] }

""" Experimental
if has("mouse")
  set mouse=a
endif
