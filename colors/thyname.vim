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

" Sets the highlighting for the given group
function! s:HL(group, fg, bg, attr)
    if !empty(a:fg)
        exec "hi " . a:group . " guifg=" . a:fg[0] . " ctermfg=" . a:fg[1]
    endif
    if !empty(a:bg)
        exec "hi " . a:group . " guibg=" . a:bg[0] . " ctermbg=" . a:bg[1]
    endif
    if a:attr != ""
        exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
    endif
endfunction

let none              = ['NONE', 'NONE']
let s:white           = ['#ffffff', '15']
let s:grayWhite       = ['#87afd7', '111']
let s:blue            = ['#3069c5', '25']
let s:lightBlue       = ['#86f6fe', '80']
let s:green           = ['#6ae35a', '120']
let s:orange          = ['#ffaf5f', '215']


call s:HL("Normal", s:white, s:blue, "")

hi WildMenu guifg=NONE guibg=#7fffd4 guisp=#7fffd4 gui=NONE ctermfg=NONE ctermbg=122 cterm=NONE
hi SpecialComment guifg=#ffdead guibg=NONE guisp=NONE gui=NONE ctermfg=223 ctermbg=NONE cterm=NONE
hi Typedef guifg=#90ee90 guibg=NONE guisp=NONE gui=NONE ctermfg=120 ctermbg=NONE cterm=NONE
hi Title guifg=#ebbb88 guibg=NONE guisp=NONE gui=NONE ctermfg=180 ctermbg=NONE cterm=NONE
hi Folded guifg=#ffffff guibg=#00008b guisp=#00008b gui=NONE ctermfg=15 ctermbg=18 cterm=NONE
hi PreCondit guifg=#ffffff guibg=NONE guisp=NONE gui=bold ctermfg=15 ctermbg=NONE cterm=bold

" absolute white
"call s:HL("Cursor", s:white, s:lightBlue, "")
call s:HL("Ignore", s:white, "", "bold")                                                                " nerdtree bookmark left icon
call s:HL("htmlString", s:white, "", "")
call s:HL("JavaScriptStrings", s:white, "", "")
call s:HL("Todo", s:white, "", "")
call s:HL("Directory", s:white, none, "bold")                                                           " nerdtree dir
call s:HL("LineNr", s:white, none, "")                                                            

" empty
call s:HL("CursorLine", none, none, "underline")
call s:HL("Underlined", none, none, "underline")                                                        " tag a href
call s:HL("VertSplit", none, none, "NONE")                                                              " pane 分界线
call s:HL("NonText", none, none, "")                                                                    " 多余背景色

" light white
call s:HL("Comment", s:grayWhite, none, "")

" light blue
call s:HL("MatchParen", "", s:lightBlue, "")
call s:HL("String", s:lightBlue, "", "")

" Cyan
hi Macro guifg=#b2fff3 guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=bold            " Macro name

" green
call s:HL("StorageClass", s:green, "", "")                                                            "let var
call s:HL("Keyword", s:green, "", "")                                                                 " quote do end

" orange yellow
call s:HL("DefinedName", s:orange, none, "NONE")
call s:HL("Number", s:orange, none, "bold")
call s:HL("Boolean", s:orange, none, "bold")
call s:HL("Special", s:orange, none, "underline")                                                     " this
call s:HL("Constant", s:orange, none, "bold")                                                         " __MODULE__  Math process
call s:HL("Float", s:orange, none, "NONE")
call s:HL("Function", s:orange, none, "NONE")
call s:HL("EnumerationValue", s:orange, none, "NONE")
call s:HL("htmlTagName", s:orange, none, "bold")
call s:HL("Type", s:orange, none, "NONE")                                                             " html tag attr




" bright yellow
hi Define guifg=#ffff5f guibg=NONE guisp=NONE gui=bold ctermfg=227 ctermbg=NONE cterm=bold            " def defmodule
hi Include guifg=#ffff5f guibg=NONE guisp=NONE gui=bold ctermfg=227 ctermbg=NONE cterm=bold           " use import
hi Statement guifg=#ffff5f guibg=NONE guisp=NONE gui=bold ctermfg=227 ctermbg=NONE cterm=bold         " bookmark head, folder head



hi Debug guifg=#ffdead guibg=NONE guisp=NONE gui=NONE ctermfg=223 ctermbg=NONE cterm=NONE
hi PMenuSbar guifg=NONE guibg=#848688 guisp=#848688 gui=NONE ctermfg=NONE ctermbg=102 cterm=NONE
hi Identifier guifg=#e0ffff guibg=NONE guisp=NONE gui=NONE ctermfg=195 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#ffdead guibg=NONE guisp=NONE gui=NONE ctermfg=223 ctermbg=NONE cterm=NONE
hi Conditional guifg=#90ee90 guibg=NONE guisp=NONE gui=NONE ctermfg=120 ctermbg=NONE cterm=NONE
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
hi subtitle guifg=#000000 guibg=#ffffff guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE

"hi TabLineFill guifg=#e51d42 guibg=#ffffff guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
"hi TabLine guifg=#e51d42 guibg=#ffffff guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
"hi StatusLine guifg=#eeeeee guibg=#ffffff guisp=#eeeeee gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
"hi StatusLineNC guifg=#86f6fe guibg=#ffffff guisp=#87ceff gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE

" unknown
"hi IncSearch guifg=#e51d42 guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
"hi SignColumn guifg=#e51d42 guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
hi TabLineSel guifg=#e51d42 guibg=#ffffff guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
"hi CTagsMember guifg=#e51d42 guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
"hi CTagsGlobalConstant guifg=#e51d42 guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
"hi DiffText guifg=#e51d42 guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
"hi ErrorMsg guifg=#e51d42 guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
"hi CTagsImport guifg=#e51d42 guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
"hi CTagsGlobalVariable guifg=#e51d42 guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
"hi SpellRare guifg=#e51d42 guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
"hi Union guifg=#e51d42 guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
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
"hi Clear guifg=#e51d42 guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
"hi pythonBuiltin guifg=#e51d42 guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
"hi phpStringSingle guifg=#e51d42 guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
"hi phpStringDouble guifg=#e51d42 guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE

