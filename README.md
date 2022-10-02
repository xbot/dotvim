# Introduction

This is my Neovim setup, which is also compatible to Vim, at least for now.

# Features

- Plugin management (with snapshots) via [vim-plug](https://github.com/junegunn/vim-plug).
- LSP via [coc.nvim](https://github.com/neoclide/coc.nvim) or Neovim native LSP, the default is coc.nvim.
- Code snippet insertion via [UltiSnips](https://github.com/SirVer/ultisnips).
- Fuzzy finder via [LeaderF](https://github.com/Yggdroot/LeaderF).
- Git integration via [fugitive.vim](https://github.com/tpope/vim-fugitive).
- Buffer-wide motions via [hop.nvim](https://github.com/phaazon/hop.nvim).
- Status line via [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim).
- Tab management via [bufferline.nvim](https://github.com/akinsho/bufferline.nvim).
- File explorer via [nvim-tree](https://github.com/kyazdani42/nvim-tree.lua) and [dirbuf](https://github.com/elihunter173/dirbuf.nvim).
- Session management via [auto-session](https://github.com/rmagatti/auto-session).
- Syntax highlighting via [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter).
- Animated GUI style notification via [nvim-notify](https://github.com/rcarriga/nvim-notify).
- Tags management via [vista](https://github.com/liuchengxu/vista.vim), [vim-gutentags](https://github.com/ludovicchabant/vim-gutentags) and [gutentags_plus](https://github.com/skywind3000/gutentags_plus).

# Install

## Manual

Assume this repo is placed at `~/Dropbox/Mackup/.vim`.

```bash
cd ~/.vim

ln -s ~/Dropbox/Mackup/.vim/UltiSnips .
ln -s ~/Dropbox/Mackup/.vim/after .
ln -s ~/Dropbox/Mackup/.vim/autoload .
ln -s ~/Dropbox/Mackup/.vim/coc-settings.json .
ln -s ~/Dropbox/Mackup/.vim/colors .
ln -s ~/Dropbox/Mackup/.vim/doc .
ln -s ~/Dropbox/Mackup/.vim/ftdetect .
ln -s ~/Dropbox/Mackup/.vim/ftplugin .
ln -s ~/Dropbox/Mackup/.vim/indent .
ln -s ~/Dropbox/Mackup/.vim/init.vim .
ln -s ~/Dropbox/Mackup/.vim/lua .
ln -s ~/Dropbox/Mackup/.vim/spell .
ln -s ~/Dropbox/Mackup/.vim/syntax .
ln -s ~/Dropbox/Mackup/.vim/plugin.lock .

ln -s ~/.vim/init.vim ~/.vimrc
ln -s ~/.vim ~/.config/nvim

# Install plugins
vim -S ~/.vim/plugin.lock
```

## Mackup

`~/.mackup.cfg`

```ini
[applications_to_ignore]
neovim
vim
```

`~/.mackup/dotvim.cfg`

```ini
[application]
name = dotvim

[configuration_files]
.vim/UltiSnips
.vim/after
.vim/autoload
.vim/coc-settings.json
.vim/colors
.vim/doc
.vim/ftdetect
.vim/ftplugin
.vim/indent
.vim/init.vim
.vim/lua
.vim/spell
.vim/syntax
.vim/plugin.lock
```

```bash
mackup restore -f

ln -s ~/.vim/init.vim ~/.vimrc
ln -s ~/.vim ~/.config/nvim

# Install plugins
vim -S ~/.vim/plugin.lock
```
