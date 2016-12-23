" Vim C64 color scheme - ThyName
" Author: Rupert Qin <rupert.qing@gmail.com>
" Vim color scheme template
"

set background=light
if version > 580
  hi clear
  if exists("syntax_on")
    syntax reset
  endif
endif

set t_Co=256
let g:colors_name = "thyname"

hi WildMenu guifg=NONE guibg=#7fffd4 guisp=#7fffd4 gui=NONE ctermfg=NONE ctermbg=122 cterm=NONE
hi SpecialComment guifg=#ffdead guibg=NONE guisp=NONE gui=NONE ctermfg=223 ctermbg=NONE cterm=NONE
hi Typedef guifg=#90ee90 guibg=NONE guisp=NONE gui=NONE ctermfg=120 ctermbg=NONE cterm=NONE
hi Title guifg=#ebbb88 guibg=NONE guisp=NONE gui=NONE ctermfg=180 ctermbg=NONE cterm=NONE
hi Folded guifg=#ffffff guibg=#00008b guisp=#00008b gui=NONE ctermfg=15 ctermbg=18 cterm=NONE
hi PreCondit guifg=#ffffff guibg=NONE guisp=NONE gui=bold ctermfg=15 ctermbg=NONE cterm=bold
hi StatusLineNC guifg=#000000 guibg=#87ceff guisp=#87ceff gui=NONE ctermfg=NONE ctermbg=117 cterm=NONE

" background,  it's better use terminal's bgcolor as default, set ctermbg=NONE
"hi Normal guifg=#ffffff guibg=#005fd7 guisp=#2f69c6 gui=NONE ctermfg=15 ctermbg=26 cterm=NONE
"hi Normal guifg=#ffffff guibg=#3069c5 guisp=#5fafff gui=NONE ctermfg=15 ctermbg=25 cterm=NONE
hi Normal guifg=#ffffff guibg=#3069c5 guisp=#5fafff gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE

" absolute white
hi Cursor guifg=#ffffff guibg=#aaaaaa guisp=#9ac0cd gui=bold ctermfg=NONE ctermbg=152 cterm=bold
hi Ignore guifg=#ffffff guibg=NONE guisp=NONE gui=bold ctermfg=15 ctermbg=NONE cterm=bold             " nerdtree bookmark left icon
hi htmlString guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi JavaScriptStrings guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi Todo guifg=#ffffff guibg=NONE guisp=NONE gui=bold ctermfg=15 ctermbg=NONE cterm=NONE
hi CursorLine guifg=NONE guibg=NONE guisp=NONE gui=underline ctermfg=NONE ctermbg=NONE cterm=underline
hi Underlined guifg=NONE guibg=NONE guisp=NONE gui=underline ctermfg=NONE ctermbg=NONE cterm=underline" tag a href
hi Directory guifg=NONE guibg=NONE guisp=NONE gui=bold ctermfg=NONE ctermbg=NONE cterm=bold           " nerdtree dir


" light white
hi Comment guifg=#87afd7 guibg=NONE guisp=NONE gui=NONE ctermfg=110 ctermbg=NONE cterm=NONE

" 行数字
hi LineNr guifg=#ffffff guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE

" light blue
hi Keyword guifg=#86f6fe guibg=NONE guisp=NONE gui=NONE ctermfg=120 ctermbg=NONE cterm=NONE           " quote do end
hi String guifg=#86f6fe guibg=NONE guisp=NONE gui=NONE ctermfg=80 ctermbg=NONE cterm=bold
hi MatchParen guifg=NONE guibg=#86f6fe guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE

" Cyan
hi Macro guifg=#b2fff3 guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=bold            " Macro name

" green
hi StorageClass guifg=#6ae35a guibg=NONE guisp=NONE gui=NONE ctermfg=120 ctermbg=NONE cterm=NONE      "let var
hi Keyword guifg=#6ae35a guibg=NONE guisp=NONE gui=NONE ctermfg=120 ctermbg=NONE cterm=NONE           " quote do end

" orange yellow
hi DefinedName guifg=#ffaf5f guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi Number guifg=#ffaf5f guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=bold
hi Boolean guifg=#ffaf5f guibg=NONE guisp=NONE gui=bold ctermfg=215 ctermbg=NONE cterm=NONE
hi Special guifg=#ffaf5f guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=underline      " this
hi Constant guifg=#ffaf5f guibg=NONE guisp=NONE gui=bold ctermfg=215 ctermbg=NONE cterm=bold          " __MODULE__  Math process
hi Float guifg=#ffaf5f guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE             " float number
hi Function guifg=#ffaf5f guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi EnumerationValue guifg=#ffaf5f guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE
hi htmlTagName guifg=#ffaf5f guibg=NONE guisp=NONE gui=bold ctermfg=215 ctermbg=NONE cterm=bold
hi Type guifg=#ffaf5f guibg=NONE guisp=NONE gui=NONE ctermfg=215 ctermbg=NONE cterm=NONE              " html tag attr

" bright yellow
hi Define guifg=#ffff5f guibg=NONE guisp=NONE gui=bold ctermfg=227 ctermbg=NONE cterm=bold            " def defmodule
hi Include guifg=#ffff5f guibg=NONE guisp=NONE gui=bold ctermfg=227 ctermbg=NONE cterm=bold           " use import
hi Statement guifg=#ffff5f guibg=NONE guisp=NONE gui=bold ctermfg=227 ctermbg=NONE cterm=bold         " bookmark head, folder head

" pane 分界线
hi VertSplit guifg=#000000 guibg=#ffffff guisp=#000000 gui=NONE ctermfg=100 ctermbg=255 cterm=NONE

" 多余背景色
hi NonText guifg=NONE guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE

hi Debug guifg=#ffdead guibg=NONE guisp=NONE gui=NONE ctermfg=223 ctermbg=NONE cterm=NONE
hi PMenuSbar guifg=NONE guibg=#848688 guisp=#848688 gui=NONE ctermfg=NONE ctermbg=102 cterm=NONE
hi Identifier guifg=#e0ffff guibg=NONE guisp=NONE gui=NONE ctermfg=195 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#ffdead guibg=NONE guisp=NONE gui=NONE ctermfg=223 ctermbg=NONE cterm=NONE
hi Conditional guifg=#90ee90 guibg=NONE guisp=NONE gui=NONE ctermfg=120 ctermbg=NONE cterm=NONE
hi StatusLine guifg=#000000 guibg=#6ca6cd guisp=#6ca6cd gui=NONE ctermfg=NONE ctermbg=74 cterm=NONE
hi Label guifg=#90ee90 guibg=NONE guisp=NONE gui=NONE ctermfg=120 ctermbg=NONE cterm=NONE
hi PMenuSel guifg=#000000 guibg=#6ca6cd guisp=#6ca6cd gui=NONE ctermfg=NONE ctermbg=74 cterm=NONE
hi Search guifg=#191970 guibg=#FFFFFF guisp=#FFFFFF gui=bold ctermfg=17 ctermbg=15 cterm=bold
hi Delimiter guifg=#ffdead guibg=NONE guisp=NONE gui=NONE ctermfg=223 ctermbg=NONE cterm=NONE
hi Character guifg=#40e0d0 guibg=NONE guisp=NONE gui=bold ctermfg=80 ctermbg=NONE cterm=bold
hi Operator guifg=#90ee90 guibg=NONE guisp=NONE gui=NONE ctermfg=120 ctermbg=NONE cterm=NONE
hi Question guifg=#fffafa guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
hi WarningMsg guifg=#8b4c39 guibg=#999999 guisp=#999999 gui=bold ctermfg=95 ctermbg=246 cterm=bold
hi ModeMsg guifg=#000000 guibg=#63b8ff guisp=#63b8ff gui=NONE ctermfg=NONE ctermbg=75 cterm=NONE
hi FoldColumn guifg=#000000 guibg=#d3d3d3 guisp=#d3d3d3 gui=NONE ctermfg=18 ctermbg=252 cterm=NONE
hi PreProc guifg=#ffffff guibg=NONE guisp=NONE gui=bold ctermfg=15 ctermbg=NONE cterm=bold
hi Visual guifg=#ffffff guibg=#27408b guisp=#27408b gui=NONE ctermfg=15 ctermbg=18 cterm=NONE
hi MoreMsg guifg=#000000 guibg=#63b8ff guisp=#63b8ff gui=NONE ctermfg=NONE ctermbg=75 cterm=NONE
hi Exception guifg=#90ee90 guibg=NONE guisp=NONE gui=NONE ctermfg=120 ctermbg=NONE cterm=NONE


hi PMenu guifg=#000000 guibg=#87ceff guisp=#87ceff gui=NONE ctermfg=NONE ctermbg=117 cterm=NONE
hi SpecialKey guifg=#000000 guibg=NONE guisp=NONE gui=NONE ctermfg=18 ctermbg=NONE cterm=NONE
hi Tag guifg=#ffdead guibg=NONE guisp=NONE gui=NONE ctermfg=223 ctermbg=NONE cterm=NONE
hi PMenuThumb guifg=NONE guibg=#a4a6a8 guisp=#a4a6a8 gui=NONE ctermfg=NONE ctermbg=248 cterm=NONE
hi Repeat guifg=#90ee90 guibg=NONE guisp=NONE gui=NONE ctermfg=120 ctermbg=NONE cterm=NONE
hi Structure guifg=#90ee90 guibg=NONE guisp=NONE gui=NONE ctermfg=120 ctermbg=NONE cterm=NONE
hi cursorim guifg=#192224 guibg=#536991 guisp=#536991 gui=NONE ctermfg=235 ctermbg=60 cterm=NONE
hi subtitle guifg=#000000 guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE

" unknown
"hi IncSearch guifg=#e51d42 guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
"hi SignColumn guifg=#e51d42 guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
"hi TabLineSel guifg=#e51d42 guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
"hi CTagsMember guifg=#e51d42 guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
"hi CTagsGlobalConstant guifg=#e51d42 guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
"hi DiffText guifg=#e51d42 guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
"hi ErrorMsg guifg=#e51d42 guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
"hi CTagsImport guifg=#e51d42 guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
"hi CTagsGlobalVariable guifg=#e51d42 guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
"hi SpellRare guifg=#e51d42 guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
"hi Union guifg=#e51d42 guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
"hi TabLineFill guifg=#e51d42 guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
"hi VisualNOS guifg=#e51d42 guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
"hi DiffDelete guifg=#e51d42 guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
"hi CursorColumn guifg=#e51d42 guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
"hi EnumerationName guifg=#e51d42 guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
"hi SpellCap guifg=#e51d42 guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
"hi DiffChange guifg=#e51d42 guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
"hi SpellLocal guifg=#e51d42 guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
"hi Error guifg=#e51d42 guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
"hi LocalVariable guifg=#e51d42 guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
"hi SpellBad guifg=#e51d42 guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
"hi CTagsClass guifg=#e51d42 guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
"hi DiffAdd guifg=#e51d42 guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
"hi TabLine guifg=#e51d42 guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
"hi Clear guifg=#e51d42 guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
"hi pythonBuiltin guifg=#e51d42 guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
"hi phpStringSingle guifg=#e51d42 guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
"hi phpStringDouble guifg=#e51d42 guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE

