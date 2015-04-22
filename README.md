# J3RN's Vim Config

Just my personal vim config. I use it.

**WARNING:** Just about everything else on this page is out-of-date. *Please*
consider this, and skim `/.vim/common_config/vundle.vim` for plugin list and
`.vimrc` for mappings and customizations.

## Plugins
My descriptions below are very basic. Please read the projects' pages if you
would like to know more about them

- [Vundle](https://github.com/gmarik/Vundle.vim) - Plugin managers. It manages your plugins
- [AutoSave](https://github.com/vim-scripts/vim-auto-save.git) - Saves your buffer every time it changes. Can be annoying, but makes Vim more modern and Google Drive-esque
- NerdTree - A totally awesome tree viewing utility inside of Vim. Can be
triggered with CTRL-n
- Syntastic - Syntax checking. Pretty useful, I suppose
- Tmuxline - Make your Tmux freakin' beautiful
- Vim Airline - Make your Vim freakin' beautiful
- Coffeescript - Syntax highlighting for Coffescript
- Bundler - You can bundle from Vim with `:Bundle`. I used to use it, now Guard
does it for me
- Surround - Helps insert, modify, remove surroundings (parenthesis, quotes,
 etc). I don't fully understand it, but it's cool
- Endwise - Auto-inserts "end" for Ruby code
- Fugitive - The greatest Git wrapper ever written
- Git - Supports Fugitive for Vim versions < 7.2
- Markdown - Better Markdown support for Vim
- Rails - An epically beautiful Rails plugin for Vim. It's great
- Commentary - Quickly and easily comment out and in lines
- Slim - Slim support for Vim
- Auto Pairs - Auto-insert closing parenthesis, brackets, etc
- CTRL-P - Fast file searching
- Rainbow Parenthesis - Make different sets of parenthesis different colors (
for better understandability, obviously)
- Elixir - For Elixir support, naturally

## Custom mappings
These are some mappings that are included and I find rather convenient

### Insert Mode
- CTRL-u - Converts the entire line to uppercase. Handy for
defining constants like MAX_CONNECTIONS_ALLOWED (blatantly stolen from ["Learn
Vimscript the Hard Way"](http://learnvimscriptthehardway.stevelosh.com))

### Normal Mode
- ALT-s - Removes all trailing whitespace (highlighted in red)
