# ThyName 『君の名は。』
a Vim ColorScheme & iTerm2 Color Preset

## Just tired of all dark vim color scheme, so come out a light one.

![](https://github.com/rupertqin/ThyName/blob/master/img/thyname.jpg)

![](https://github.com/rupertqin/ThyName/blob/master/img/1.png)

![](https://github.com/rupertqin/ThyName/blob/master/img/2.png)

## Install

copy `./colors/thyname.vim` to your path `~/.vim/colors/thyname.vim` 

in `.vimrc`: 

```vim
colorscheme thyname
set background=light
```

## Airline bar

in your `.vimrc` add:

```vim
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_theme = 'solarized'
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1
```

## iTerm color preset
#### There is a `iTerm2` color preset in `ThyName.itermcolors`, to make the shell match this vim colorscheme

`iTerm2 => Preferances => profiles => Colors => Color Presets => import (file)` 

## oh-my-zsh color setting

if you use oh-my-zsh, you can use my color setting.
this theme `thy-name.zsh-theme` is base on 'halflife.zsh-theme'

Copy to `~/.oh-my-zsh/themes/thy-name.zsh-theme`

In `.zshrc`, add `ZSH_THEME="thy-name"`

## Macvim support thin strokes font in Retina

`defaults write org.vim.MacVim AppleFontSmoothing -int 0`

## True color (include tmux, but vim-in-tmux's color is a little bit darker, don't know why, and it depends..)

in `.vimrc`: 

```vim
if !has('gui')
  if !empty($TMUX)
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    " make bg transparent in vim-in-tmux mode, for bgColor's bug
    highlight Normal ctermbg=NONE guibg=NONE
  endif
  set termguicolors
endif
```

## Resource

[Xterm256_color_names_for_console_Vim](http://vim.wikia.com/wiki/Xterm256_color_names_for_console_Vim)

[a tool to check syntax name](http://bytefluent.com/vivify/)

[npm color2xterm](https://www.npmjs.com/package/color2xterm)

[vimscript syntax](http://ricostacruz.com/cheatsheets/vimscript.html)