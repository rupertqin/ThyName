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

" *********************  DEFINE COLORS  *************************
" ***************************************************************
let none                            = ['NONE', 'NONE']
let white                           = ['#ffffff', '15']
let grayWhite                       = ['#87afd7', '111']
let blue                            = ['#3069c5', '25']
let lightBlue                       = ['#86f6fe', '80']
let green                           = ['#8BF767', '120']
let orange                          = ['#ffaf5f', '215']
let yellow                          = ['#ffff5f',  '227']
let cyan                            = ['#b2fff3', '159']

" *********************  VAREABLE MEANING   *************************
" *******************************************************************
" Ignore            nerdtree bookmark left icon
" Directory         nerdtree dir
" Underlined        tag a href
" VertSplit         pane 分界线"
" NonText           多余背景色"
" Special           this"
" Constant          __MODULE__  Math process"
" Type              html-attr class-name"
" Define            def defmodule"
" Include           use import"
" Statement         bookmark head, folder head"
" StorageClass      let var"
" Keyword           quote do end"
" Repeat            for"
" Identifier        @doc   @test  splash:/ "
" Delimiter         #{}"
" Title             h1-h6  Title"
" PreProc           $var"

" *********************  FUNCTION   *************************
" ***********************************************************
" set all
function! s:HL(group, fg, bg, style)
  if !empty(a:fg)
    exec "hi " . a:group . " guifg=" . a:fg[0] . " ctermfg=" . a:fg[1]
  endif
  if !empty(a:bg)
    exec "hi " . a:group . " guibg=" . a:bg[0] . " ctermbg=" . a:bg[1]
  endif
  if a:style != ""
    exec "hi " . a:group . " gui=" . a:style . " cterm=" . a:style
  endif
endfunction

" set colors
function! s:CL(group, fg, bg)
  if !empty(a:fg)
    exec "hi " . a:group . " guifg=" . a:fg[0] . " ctermfg=" . a:fg[1]
  endif
  if !empty(a:bg)
    exec "hi " . a:group . " guibg=" . a:bg[0] . " ctermbg=" . a:bg[1]
  endif
endfunction

" set style
function! s:ST(group, style)
  exec "hi " . a:group . " gui=" . a:style . " cterm=" . a:style
endfunction

" *********************  SETTING   *************************
" **********************************************************
" Base
call s:HL("Normal", white, blue, "NONE")

" absolute white
for w in ["Ignore", "htmlString", "JavaScriptStrings", "Todo", "Directory", "LineNr", "Identifier", "Operator", "Title"]
  call s:HL(w, white, none, "")
endfor

" Bold
for w in ["Ignore", "Directory", "Boolean", "htmlTagName", "Special", "Identifier", "Macro"]
  call s:ST(w, "bold")
endfor

" underline
for w in ["CursorLine", "Underlined"]
  call s:ST(w, "underline")
endfor

" empty
for w in ["CursorLine", "Underlined", "VertSplit", "NonText"]
  call s:CL(w, none, none)
endfor

" gray white
call s:HL("Comment", grayWhite, none, "")

" light blue
call s:CL("MatchParen", none, lightBlue)
for w in ["Macro", "Type", "String"]
  call s:CL(w, lightBlue, none)
endfor

" style none
for w in ["Type", "VertSplit"]
  call s:ST(w, "NONE")
endfor

" green
for w in ["StorageClass", "Keyword", "PreProc"]
  call s:CL(w, green, none)
endfor

" orange
for w in ["DefinedName", "Number", "Boolean", "Special", "Constant", "Float", "Function", "EnumerationValue", "htmlTagName", "Delimiter"]
  call s:CL(w, orange, none)
endfor

" yellow
for w in ["Define", "Include", "Statement", "Repeat"]
  call s:HL(w, yellow, none, "bold")
endfor
call s:CL("ExtraWhitespace", none, yellow)


" *********************  UNKNOWN   *************************
" **********************************************************
" hi Visual guifg=#ffffff guibg=#27408b guisp=#27408b gui=NONE ctermfg=15 ctermbg=18 cterm=NONE
" hi Search guifg=#191970 guibg=#FFFFFF guisp=#FFFFFF gui=bold ctermfg=17 ctermbg=15 cterm=bold
" hi Debug guifg=#ffdead guibg=NONE guisp=NONE gui=NONE ctermfg=223 ctermbg=NONE cterm=NONE
" hi PMenuSbar guifg=NONE guibg=#848688 guisp=#848688 gui=NONE ctermfg=NONE ctermbg=102 cterm=NONE
" hi SpecialChar guifg=#ffdead guibg=NONE guisp=NONE gui=NONE ctermfg=223 ctermbg=NONE cterm=NONE
" hi Character guifg=#40e0d0 guibg=NONE guisp=NONE gui=bold ctermfg=80 ctermbg=NONE cterm=bold
" hi Question guifg=#fffafa guibg=NONE guisp=NONE gui=NONE ctermfg=15 ctermbg=NONE cterm=NONE
" hi WarningMsg guifg=#8b4c39 guibg=#999999 guisp=#999999 gui=bold ctermfg=95 ctermbg=246 cterm=bold
" hi Tag guifg=#ffdead guibg=NONE guisp=NONE gui=NONE ctermfg=223 ctermbg=NONE cterm=NONE
" hi PMenuThumb guifg=NONE guibg=#a4a6a8 guisp=#a4a6a8 gui=NONE ctermfg=NONE ctermbg=248 cterm=NONE
" hi cursorim guifg=#192224 guibg=#536991 guisp=#536991 gui=NONE ctermfg=235 ctermbg=60 cterm=NONE
"hi TabLineFill guifg=#e51d42 guibg=#ffffff guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
"hi TabLine guifg=#e51d42 guibg=#ffffff guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
"hi StatusLine guifg=#eeeeee guibg=#ffffff guisp=#eeeeee gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
"hi StatusLineNC guifg=#86f6fe guibg=#ffffff guisp=#87ceff gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
"hi IncSearch guifg=#e51d42 guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
"hi SignColumn guifg=#e51d42 guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
"hi TabLineSel guifg=#e51d42 guibg=#ffffff guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
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
" hi Conditional guifg=#6ae35a guibg=NONE guisp=NONE gui=NONE ctermfg=120 ctermbg=NONE cterm=NONE
" hi Label guifg=#6ae35a guibg=NONE guisp=NONE gui=NONE ctermfg=120 ctermbg=NONE cterm=NONE
" hi Exception guifg=#6ae35a guibg=NONE guisp=NONE gui=NONE ctermfg=120 ctermbg=NONE cterm=NONE
" hi Structure guifg=#6ae35a guibg=NONE guisp=NONE gui=NONE ctermfg=120 ctermbg=NONE cterm=NONE
" hi Typedef guifg=#6ae35a guibg=NONE guisp=NONE gui=NONE ctermfg=120 ctermbg=NONE cterm=NONE
" hi PMenuSel guifg=#000000 guibg=#6ca6cd guisp=#6ca6cd gui=NONE ctermfg=NONE ctermbg=74 cterm=NONE
" hi ModeMsg guifg=#000000 guibg=#63b8ff guisp=#63b8ff gui=NONE ctermfg=NONE ctermbg=75 cterm=NONE
" hi FoldColumn guifg=#000000 guibg=#d3d3d3 guisp=#d3d3d3 gui=NONE ctermfg=18 ctermbg=252 cterm=NONE
" hi MoreMsg guifg=#000000 guibg=#63b8ff guisp=#63b8ff gui=NONE ctermfg=NONE ctermbg=75 cterm=NONE
" hi PMenu guifg=#000000 guibg=#87ceff guisp=#87ceff gui=NONE ctermfg=NONE ctermbg=117 cterm=NONE
" hi SpecialKey guifg=#000000 guibg=NONE guisp=NONE gui=NONE ctermfg=18 ctermbg=NONE cterm=NONE
" hi subtitle guifg=#000000 guibg=#ffffff guisp=NONE gui=NONE ctermfg=NONE ctermbg=NONE cterm=NONE
" hi WildMenu guifg=NONE guibg=#7fffd4 guisp=#7fffd4 gui=NONE ctermfg=NONE ctermbg=122 cterm=NONE
" hi SpecialComment guifg=#ffdead guibg=NONE guisp=NONE gui=NONE ctermfg=223 ctermbg=NONE cterm=NONE
" hi Folded guifg=#ffffff guibg=#00008b guisp=#00008b gui=NONE ctermfg=15 ctermbg=18 cterm=NONE
" hi PreCondit guifg=#ffffff guibg=NONE guisp=NONE gui=bold ctermfg=15 ctermbg=NONE cterm=bold