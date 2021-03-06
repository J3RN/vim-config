# J3RN's Vim Config

Just my personal vim config. I use it.

**Disclaimer**: My config has been slowly put together over many years by me. It is based on what I use, and my needs. Your needs very well may be different.

## Requirements

A [powerline font](https://github.com/powerline/fonts). I use Ubuntu Mono. Everything else (like ZSH) should be optional. Open an issue if it is not.

## Install

Simply run:

```
./install.sh
```

It doesn't do anything evil, I promise. If you'd like to verify that, I encourage you to read it - it's a mere 30 SLOC.

## Plugins
My descriptions below are very basic. Please read the projects' pages if you
would like to know more about them

| Plugin                                                      | Description                                                                                                      |
|-------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------|
| [Vundle](https://github.com/gmarik/Vundle.vim)              | Plugin manager. It manages your plugins                                                                          |
| [NerdTree](https://github.com/scrooloose/nerdtree)          | A totally awesome tree viewing utility inside of Vim. Can be triggered with CTRL-n                               |
| [Syntastic](https://github.com/scrooloose/syntastic)        | Syntax checking. Pretty useful, I suppose                                                                        |
| [Tmuxline](https://github.com/edkolev/tmuxline.vim)         | Make your Tmux freakin' beautiful                                                                                |
| [Vim Airline](https://github.com/bling/vim-airline)         | Make your Vim freakin' beautiful                                                                                 |
| [Coffeescript](https://github.com/kchmck/vim-coffee-script) | Syntax highlighting for Coffescript                                                                              |
| [Bundler](https://github.com/tpope/vim-bundler)             | You can bundle from Vim with `:Bundle`. I used to use it, now Guard does it for me                               |
| [Git](https://github.com/tpope/vim-git)                     | Supports Fugitive for Vim versions < 7.2                                                                         |
| [Surround](https://github.com/tpope/vim-surround)           | Helps insert, modify, remove surroundings (parenthesis, quotes, etc). I don't fully understand it, but it's cool |
| [Endwise](https://github.com/tpope/vim-endwise)             | Auto-inserts "end" for Ruby code                                                                                 |
| [Fugitive](https://github.com/tpope/vim-fugitive)           | The greatest Git wrapper ever written                                                                            |
| [Markdown](https://github.com/tpope/vim-markdown)           | Better Markdown support for Vim                                                                                  |
| [Rails](https://github.com/tpope/vim-rails)                 | An epically beautiful Rails plugin for Vim. It's great                                                           |
| [Commentary](https://github.com/tpope/vim-commentary)       | Quickly and easily comment out and in lines                                                                      |
| [Slim](https://github.com/slim-template/vim-slim)           | Slim support for Vim                                                                                             |
| [Auto Pairs](https://github.com/jiangmiao/auto-pairs)       | Auto-insert closing parenthesis, brackets, etc                                                                   |
| [CTRL-P](https://github.com/kien/ctrlp.vim)                 | Fast file searching                                                                                              |
| [Rainbow](https://github.com/luochen1990/rainbow)           | Make different sets of parenthesis different colors ( for better understandability, obviously)                   |
| [Elixir](https://github.com/elixir-lang/vim-elixir)         | For Elixir support, naturally                                                                                    |
| [Jade](https://github.com/digitaltoad/vim-jade)             | Jade syntax highlighting                                                                                         |
| [Fish](http://github.com/dag/vim-fish)                      | Fish syntax highlighting and other niceties                                                                      |
| [Spacebars](https://github.com/Slava/vim-spacebars)         | Spacebars support                                                                                                |
| [HTML5](https://github.com/othree/html5.vim)                | Better HTML5 syntax highlighting                                                                                 |
| [RSpec](https://github.com/keith/rspec.vim)                 | Better RSpec syntax highlighting                                                                                 |
| [Nim](https://github.com/zah/nim.vim)                       | Better Nim support                                                                                               |
| [Dispatch](https://github.com/tpope/vim-dispatch)           | Run async compiler plugins                                                                                       |
| [Pencil](https://github.com/reedes/vim-colors-pencil)       | Nice colors                                                                                                      |

## Custom mappings
These are some mappings that are included and I find rather convenient

### Global mappings (all modes)

| Mapping | Description   |
|---------|---------------|
| `CTRL`n | Open NERDTree |
| `CTRL`s | Save (`:w`)   |
| `CTRL`c | Quit (`:q`)   |

### Normal Mode

| Mapping | Description                                                                |
|---------|----------------------------------------------------------------------------|
| ,a      | Copy entire contents of current buffer into system clipboard               |
| ,b      | Run `bundle` using vim-bundler                                             |
| ,c      | Correct contents of an HTML tag                                            |
| ,d      | Deletes all trailing whitespace in the current buffer (highlighted in red) |
| ,ft     | TestNearest                                                                |
| ,fT     | TestFile                                                                   |
| ,fa     | TestSuite                                                                  |
| ,fl     | TestLast                                                                   |
| ,fg     | TestVisit                                                                  |
| ,gs     | Use Fugitive to open the `git` status                                      |
| ,gm     | Use Fugitive to `git checkout -b`                                          |
| ,go     | Use Fugitive to `git pull`                                                 |
| ,gp     | Use Fugitive to `git push`                                                 |
| ,gb     | Use Fugitive to `git blame`                                                |
| ,gd     | Use Fugitive to `git diff`                                                 |
| ,gu     | Push and set upstream (`git push -u origin <current-branch>`)              |
| ,gf     | Force push current branch (`git push -f origin <current-branch>`)          |
| ,rc     | Use vim-rails to run `rails console`                                       |
| ,s      | Clear search highlighting (`:noh`)                                         |
| ,t      | Open a terminal (works best in [Neovim](https://github.com/neovim/neovim)) |
| ,w      | Swap parameters. For example, "foo(foo, bar)" becomes "foo(bar, foo)".     |

For all of the Test* commands, you can find what these nonsense words mean on the [Vim-test README](https://github.com/janko-m/vim-test#setup).

**Why did you choose `f` for the prefix for the test commands?**

It's on the home row, and `t` was already mapped

### Insert Mode

| Mapping | Description                                                |
|---------|------------------------------------------------------------|
| jk      | Leave Insert mode (`ESC`)                                  |
| ,h      | Create an HTML tag with what is currently under the cursor |

### Visual mode

| Mapping | Description                        |
|---------|------------------------------------|
| ,y      | Copy selection to system clipboard |

### Terminal mode (Neovim Only)

| Mapping | Description                          |
|---------|--------------------------------------|
| jk      | Exit insert mode in terminal         |
| `CTRL`w | Exit insert mode and trigger `CTRL`w |

## LICENSE

This is MIT Licensed. You can find the whole license in the `LICENSE` file.
