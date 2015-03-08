""" Vundle
runtime! common_config/*.vim

""" Rails has forced me to love spaces
set tabstop=2
set shiftwidth=2
set expandtab

""" JSLint and PEP8 want 4 spaces
autocmd FileType javascript setlocal shiftwidth=4 tabstop=4
autocmd FileType python setlocal shiftwidth=4 tabstop=4

""" Line numbers are pretty great
set nu

""" TMUX fix
if $TMUX == ''
  set clipboard+=unnamed
endif

""" People told me to
set nocompatible

""" Enable Auto-save on startup
"let g:auto_save = 1

""" Custom search stuff
set ignorecase
set smartcase   " Slightly better ignoring of case
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
set shell=/bin/zsh\ --login

""" I was told all the cool kids did it
imap jk <Esc>

""" Easier system for clearing searches
nmap <C-c> :noh<CR>

""" Folding stuff
set fdm=indent                        " Fold on indent, naturally
au FileType gitcommit set fdm=manual  " Why would you fold gitcommits?
" Toggle folding with 'tt'
nnoremap tt za<CR>
" All folds open by default
au BufRead * normal zR

""" Set spell checking for texty files
autocmd FileType markdown setlocal spell spelllang=en_us

""" Trailing whitespace highlighting
highlight ExtraWhitespace ctermbg=red guibg=red
au ColorScheme * highlight ExtraWhitespace guibg=red
au BufEnter * match ExtraWhitespace /\s\+$/
au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
au InsertLeave * match ExtraWhiteSpace /\s\+$/

" Auto complete HTML tags
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
imap <lt>/<TAB> </<C-X><C-O>

" Easy saving
inoremap <C-s> <ESC>:w<CR>
nnoremap <C-s> :w<CR>

""" Set GUI font for MacVim
set guifont=Sauce\ Code\ Powerline:h12

""" Rainbow parenthesis
let g:rainbow_active = 1
au FileType html RainbowToggle

let g:rainbow_conf = {
      \   'guifgs': ['royalblue3', 'seagreen3', 'darkorchid3', 'firebrick3'],
      \   'ctermfgs': ['darkcyan', 'darkgray', 'darkgreen', 'darkred', 'darkmagenta'],
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
      \       'html': {
      \           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ > ])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
      \       },
      \       'css': 0,
      \   }
      \}

""" Have Syntastic understand AngularJS
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]

""" Custom Vim Rails additions
let g:rails_projections = {
      \ "spec/factories/*.rb":  {"command": "factory"},
      \ "config/*":             {"command": "conf" },
      \ "Gemfile":              {"command": "gemfile"},
      \ "Guardfile":            {"command": "guardfile"}}

""" Custom Tmuxline preset
let g:tmuxline_preset = {
        \'a'       : '#S',
        \'b'       : ['#I:#P','#F'],
        \'win'       : ['#I', '#W'],
        \'cwin'       : ['#I', '#W'],
        \'y'       : "#(~/.vim/.tmux_battery_indicator.sh)",
        \'z'       : '%H:%M %d-%b-%y',
        \'options' : {'status-justify' : 'left'}}
