# J3RN's Vim Config

Just my personal vim config. I use it.

**Disclaimer**: My config has been slowly put together over many years by me. It is based on what I use, and my needs. Your needs very well may be different.

## Plugins
My descriptions below are very basic. Please read the projects' pages if you
would like to know more about them

- [Vundle](https://github.com/gmarik/Vundle.vim) - Plugin managers. It manages your plugins
- [NerdTree](https://github.com/scrooloose/nerdtree) - A totally awesome tree viewing utility inside of Vim. Can be triggered with CTRL-n
- [Syntastic](https://github.com/scrooloose/syntastic) - Syntax checking. Pretty useful, I suppose
- [Tmuxline](https://github.com/edkolev/tmuxline.vim) - Make your Tmux freakin' beautiful
- [Vim Airline](https://github.com/bling/vim-airline) - Make your Vim freakin' beautiful
- [Coffeescript](https://github.com/kchmck/vim-coffee-script) - Syntax highlighting for Coffescript
- [Bundler](https://github.com/tpope/vim-bundler) - You can bundle from Vim with `:Bundle`. I used to use it, now Guard does it for me
- [Git](https://github.com/tpope/vim-git) - Supports Fugitive for Vim versions < 7.2
- [Surround](https://github.com/tpope/vim-surround) - Helps insert, modify, remove surroundings (parenthesis, quotes, etc). I don't fully understand it, but it's cool
- [Endwise](https://github.com/tpope/vim-endwise) - Auto-inserts "end" for Ruby code
- [Fugitive](https://github.com/tpope/vim-fugitive) - The greatest Git wrapper ever written
- [Markdown](https://github.com/tpope/vim-markdown) - Better Markdown support for Vim
- [Rails](https://github.com/tpope/vim-rails) - An epically beautiful Rails plugin for Vim. It's great
- [Commentary](https://github.com/tpope/vim-commentary) - Quickly and easily comment out and in lines
- [Slim](https://github.com/slim-template/vim-slim) - Slim support for Vim
- [Auto Pairs](https://github.com/jiangmiao/auto-pairs) - Auto-insert closing parenthesis, brackets, etc
- [CTRL-P](https://github.com/kien/ctrlp.vim) - Fast file searching
- [Rainbow](https://github.com/luochen1990/rainbow) Parenthesis - Make different sets of parenthesis different colors ( for better understandability, obviously)
- [Elixir](https://github.com/elixir-lang/vim-elixir) - For Elixir support, naturally
- [YCM](https://github.com/Valloric/YouCompleteMe) - Tab completion. Yeah, YCM causes a whole ton of problems. Be careful.
- [Jade](https://github.com/digitaltoad/vim-jade) - Jade syntax highlighting.

## Custom mappings
These are some mappings that are included and I find rather convenient

- jk - Leave Insert mode (ESC)
- CTRL-n - Open NERDTree
- CTRL-x - Save

### Normal Mode
- ALT-s - Deletes all trailing whitespace (highlighted in red)
- CTRL-c - Clear search (:noh)
- tt - Toggle fold (folds are based on indent)
- ta - Correct contents of an HTML tag
- CTRL-g - Open Fugitive's status
- ALT-p - Use Fugitive to `git push`

### Insert Mode
- CTRL-u - Converts the entire line to uppercase. Handy for defining constants like MAX_CONNECTIONS_ALLOWED (blatantly stolen from ["Learn Vimscript the Hard Way"](http://learnvimscriptthehardway.stevelosh.com))
- </TAB - Auto-complete HTML tag
