""" Load Vundle plugins
runtime! vundle.vim

""" Set leader to ,
let mapleader=","

""" FileType tabbing settings
" Default
set tabstop=2 shiftwidth=2 expandtab
set shiftround      " Don't think anyone would disagree here
" Specifics
autocmd FileType c,arduino setlocal tabstop=8 shiftwidth=8 noexpandtab
autocmd FileType json,rust setlocal shiftwidth=4 tabstop=4
autocmd FileType python setlocal tabstop=8 shiftwidth=4 softtabstop=4

""" Line numbers are pretty great
set number

""" TMUX fix
if $TMUX == ''
  set clipboard+=unnamed
endif

""" Keep cursor somewhat centered in screen
set scrolloff=5

""" Listchars, should you want them
set listchars=eol:$,tab:»»,space:·

""" Highlight colors for listchars and other unknows/invisibles
hi NonText ctermfg=8
hi SpecialKey ctermfg=8

""" Who needs vi compatibility anyways?
set nocompatible

""" Custom search stuff
set ignorecase  " Ignore case of searches
set smartcase   " Used with above to only ignore sometimes
set incsearch   " C-r C-w to complete search term
set hlsearch    " Highlight search

""" Show where the 80 character limit is
"" Enforce it with 'textwidth'
if exists('+colorcolumn')
  setlocal colorcolumn=80
  setlocal textwidth=80
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
if executable('/bin/zsh')
  set shell=/bin/zsh
endif

""" Folding
set foldmethod=indent                 " Fold on indent, naturally
set foldlevelstart=20                 " Start basicall all unfolded

""" Better color scheme for diffing
hi DiffAdd      ctermfg=254 ctermbg=22
hi DiffDelete   ctermfg=16 ctermbg=52 cterm=bold
hi DiffChange   ctermfg=15 ctermbg=90
hi DiffText     ctermfg=16 ctermbg=3 cterm=bold

""" More Git functions not provided by vim-fugitive
function! PushAndSetUpstream()
  let current_branch = system("git symbolic-ref --short HEAD")
  echo system("git push -u origin ".current_branch)
endfunction

function! ForcePush()
  let current_branch = system("git symbolic-ref --short HEAD")
  echo system("git push -f origin ".current_branch)
endfunction

""" Settings specific to non-code editing
function! SetupForText()
  " Spell checking
  setlocal spell spelllang=en_us
  " Wrap at end of screen
  setlocal wrap
  " Break on whitespace
  setlocal linebreak
  " Turn off colorcolumn
  setlocal colorcolumn=0
  " Unset textwidth
  setlocal textwidth=0


  "" Moving around in wrapped lines
  " Normal mode
  nnoremap <buffer> j gj
  nnoremap <buffer> k gk
  " Visual mode
  vnoremap <buffer> j gj
  vnoremap <buffer> k gk
endfunction

" Use text mode for Markdown and LaTeX
autocmd FileType markdown call SetupForText()

""" Trailing whitespace

" Highlight trailing whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
autocmd ColorScheme * highlight ExtraWhitespace guibg=red
autocmd BufEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhiteSpace /\s\+$/

""" Completion

" Omnicompletion based on syntax
set omnifunc=syntaxcomplete#Complete

""" Set GUI font for MacVim
set guifont=Ubuntu\ Mono\ Powerline:h12

""" Auto-insert when entering a terminal
if has("nvim")
  autocmd BufEnter * if bufname("%") =~ "term://" | startinsert | endif
endif

""" Mouse mode, if available
if has("mouse")
  set mouse=a
endif

""" Open new split panes to right, which feels more natural
set splitright

" Tab completion
" will insert tab at beginning of line,
" will use completion if not at beginning
set wildmode=list:longest,list:full
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] =~ '\s'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <Tab> <c-r>=InsertTabWrapper()<cr>
inoremap <S-Tab> <c-n>

"" Templates
autocmd BufNewFile *.html 0r ~/.vim/templates/template.html
autocmd BufNewFile *.tex 0r ~/.vim/templates/template.tex

"" RTex support
autocmd BufRead,BufNewFile *.Rtex setfiletype tex

""" Mappings

"" All modes
" NERDTree
noremap <C-n> :NERDTreeToggle<CR>
" Save with CTRL-s
nnoremap <C-s> :w<CR>
inoremap <C-s> <ESC>:w<CR>
vnoremap <C-s> <ESC>:w<CR>
" Quit with CTRL-c
noremap <C-c> :q<CR>

"" Normal mode
" Clear Serach
nnoremap <Leader>s :noh<CR>
" Delete extra whitespace
nnoremap <Leader>d :%s/\s\+$//<CR>
" Correct inside HTML tag
nnoremap <Leader>c 0f><Right>ct<
" Fugitive commands
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gp :Gpush<CR>
nnoremap <Leader>go :Gpull<CR>
nnoremap <Leader>gb :Gblame<CR>
nnoremap <Leader>gd :Gdiff<CR>
nnoremap <Leader>gm :Git checkout -b 
nnoremap <Leader>gc :Git checkout 
" My custom git commands
nnoremap <silent> <Leader>gu :call PushAndSetUpstream()<CR>
nnoremap <silent> <Leader>gf :call ForcePush()<CR>
" Better :
nnoremap : q:i
" Terminal
if has("nvim")
  nnoremap <Leader>t <ESC>:term fish<CR>
else
  nnoremap <Leader>t <ESC>:!fish<CR>
endif
" Faster make
nnoremap <Leader>m :make<CR>
" Switch around the comma
nnoremap <Leader>w dt,<right><right>P<right>dEF,P
" Bundle
nnoremap <Leader>b :Bundle<CR>

"" Insert Mode
" I was told all the cool kids did it
inoremap jk <Esc>

" Create HTML tags
inoremap <Leader>h <ESC>"adiwa<<C-r>a></<C-r>a><ESC>%i

"" Visual Mode
" Copy to system clipboard easily
vnoremap <Leader>y "+y

"" Terminal mode (nvim only)
if has("nvim")
  " Escape terminal with jk
  tnoremap jk <C-\><C-n>
  tnoremap <C-w> <C-\><C-n><C-w>
endif

""" Plugin configs

" Enable airline bar all the time
set laststatus=2

" NERDTree show hidden files
let NERDTreeShowHidden=1
" But not Vim swap files
let NERDTreeIgnore = ['\.swp$']

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
      \ "app/workers/*.rb":     {"command": "worker"},
      \ "app/jobs/*.rb":        {"command": "job"},
      \ "spec/factories/*.rb":  {"command": "factory"},
      \ "config/deploy/*.rb":   {"command": "deploy"},
      \ "config/*":             {"command": "cnf" }}

" Custom Tmuxline preset
let g:tmuxline_preset = {
        \'a'       : '#S',
        \'b'       : ['#I:#P','#F'],
        \'win'     : ['#I', '#W'],
        \'cwin'    : ['#I', '#W'],
        \'y'       : "#(~/.vim/.tmux_battery_indicator.sh)",
        \'z'       : '%Y-%m-%d %H:%M',
        \'options' : {'status-justify' : 'left'}}

" Be passive on HTML and let me write my Angular, Meteor, etc
let g:syntastic_mode_map = { 'passive_filetypes': ['html'] }

" Assume Python 3
let g:syntastic_python_python_exec = '/usr/bin/env python3'

" Technically this is global, but here set for vim-gitgutter
set updatetime=750
