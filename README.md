# ThyName 『君の名は。』
a Vim ColorScheme & iTerm2 Color Preset

## Just tired of all dark vim color scheme, so come out a light one.

## Install

copy `./colors/thyname.vim` to your path `~/.vim/colors/thyname.vim` 

in `.vimrc`: 

```vim
colorscheme thyname
set background=light
```

## iTerm color preset
#### There is a `iTerm2` color preset in `ThyName.itermcolors`, to make the shell match this vim colorscheme

`iTerm2 => Preferances => profiles => Colors => Color Presets => import (file)` 

## Background is important

Since Vim in shell mode, the color is poor. It's encourage to use the iTerm2's bgColor as default bgColor, if not, set 
`hi Normal ... ctermbg=NONE` to  `hi Normal ... ctermbg=25`


![](https://github.com/rupertqin/ThyName/blob/master/img/thyname.jpg)

![](https://github.com/rupertqin/ThyName/blob/master/img/1.png)


![](https://github.com/rupertqin/ThyName/blob/master/img/2.png)


## Resource

[Xterm256_color_names_for_console_Vim](http://vim.wikia.com/wiki/Xterm256_color_names_for_console_Vim)

[a tool to check syntax name](http://bytefluent.com/vivify/)

[npm color2xterm](https://www.npmjs.com/package/color2xterm)