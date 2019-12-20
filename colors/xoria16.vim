" Vim color file
" Maintainer: Serge Smetana <serge.smetana@gmail.com>
" URL: https://github.com/smetana/dot-vim/blob/master/colors/xoria16.vim
" Version: 0.1

" 16-color palette
"  0 #000000
"  1 #df8787 dark red
"  2 #87d787 dark green
"  3 #d7af87 brown
"  4 #5787ff dark blue
"  5 #afafdf dark magenta
"  6 #57afdf dark cyan TODO
"  7 #d0d0d0 light gray
"  8 #808080 dark gray
"  9 #d7afaf (#df8787) light red
" 10 #afdf87 light green
" 11 #ffffaf yellow
" 12 #87afdf light blue
" 13 #dfafdf light magenta
" 14 #87cdcf light cyan TODO
" 15 #ffffff white

set background=dark

hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name="xoria16"

hi Normal ctermfg=7 ctermbg=0 cterm=none guifg=#d0d0d0 guibg=#000000

" order by:
"   :help highlighting-groups
" see also:
"   :help group-name
"   :help cterm-colors
hi ColorColumn ctermbg=8 guibg=#202020
"hi Conceal
"hi Cursor
"hi CursorIM
hi CursorColumn ctermbg=8 guibg=#202020
hi CursorLine ctermbg=8 cterm=none guibg=#202020
hi Directory ctermfg=4 guifg=#5787ff
hi DiffAdd ctermfg=bg ctermbg=10 guifg=bg guibg=#afdf87
hi DiffChange ctermfg=bg ctermbg=9 guifg=bg guibg=#57d7d7
hi DiffDelete ctermfg=bg ctermbg=9 guifg=bg guibg=#df8787
hi DiffText ctermfg=15 ctermbg=1 guifg=#ffffff guibg=#009999

"hi EndOfBuffer
hi ErrorMsg ctermfg=15 ctermbg=darkred guifg=#ffffff guibg=#800000
hi VertSplit ctermfg=8 ctermbg=8 cterm=none guifg=#202020 guibg=#202020
hi Folded ctermfg=15 ctermbg=8 guifg=#ffffff guibg=#333333
hi FoldColumn ctermfg=15 ctermbg=0 guifg=#ffffff guibg=#d0d0d0
hi SignColumn ctermfg=15 guifg=#ffffff
hi IncSearch ctermfg=0 ctermbg=11 guifg=#000000 guibg=#ffffaf
hi LineNr ctermfg=8 guifg=#808080
hi CursorLineNr ctermfg=7 guifg=#d0d0d0
hi MatchParen ctermfg=0 ctermbg=11 guifg=#000000 guibg=#ffffaf
"hi ModeMsg
"hi MoreMsg
hi NonText ctermfg=8 guifg=#808080
hi Pmenu ctermfg=7 ctermbg=8 guifg=#a7a7a7 guibg=#333333
hi PmenuSel ctermfg=0 ctermbg=7 guifg=#ffffff guibg=#777777
hi PmenuSbar ctermfg=0 ctermbg=7 guifg=#000000 guibg=#d0d0d0
"hi PmenuThumb
hi Question ctermfg=2 guifg=#87d787
"hi QuickFixLine
"hi Search
hi SpecialKey ctermfg=2 guifg=#87df87
hi SpellBad ctermfg=9 ctermbg=bg cterm=underline guifg=#df8787 guibg=bg gui=underline
"hi SpellCap
"hi SpellLocal
"hi SpellRare
hi StatusLine ctermfg=15 ctermbg=8 cterm=none guifg=#ffffff guibg=#333333 gui=none
hi StatusLineNC ctermfg=7 ctermbg=8 cterm=none guifg=#a7a7a7 guibg=#4e4e4e gui=none
hi StatusLineTerm ctermfg=15 ctermbg=8 cterm=none guifg=#ffffff guibg=#4e4e4e gui=none
hi StatusLineTermNC ctermfg=7 ctermbg=8 cterm=none guifg=#a7a7a7 guibg=#333333 gui=none

hi TabLine ctermfg=fg ctermbg=8 cterm=none guifg=fg guibg=#333333 gui=none
hi TabLineFill ctermfg=fg ctermbg=8 cterm=none guifg=fg guibg=#333333
hi TabLineSel ctermfg=15 ctermbg=8 cterm=none guifg=#ffffff guibg=#333333
"hi Terminal
"hi Title
hi Visual ctermbg=5 ctermfg=15 guifg=#ffffff guibg=#875f87
"hi VisualNOS
"hi WarningMsg
hi WildMenu ctermfg=15 ctermbg=8 cterm=inverse

hi diffAdded ctermfg=10 guifg=#afdf87
hi diffRemoved ctermfg=9 guifg=#df8787

hi Comment  ctermfg=8 guifg=#808080

hi Constant ctermfg=11 guifg=#ffffaf
hi String ctermfg=2 guifg=#87d787
hi Character ctermfg=11 guifg=#ffffaf
hi Number ctermfg=3 guifg=#d7af87
hi Boolean ctermfg=11 guifg=#ffffaf
hi Float ctermfg=3 guifg=#d7af87

hi Identifier ctermfg=13 guifg=#dfafdf
hi link Function Identifier

hi Statement ctermfg=12 cterm=none guifg=#87afdf gui=none
hi link Conditional Statement
hi link Repeat Statement
hi link Label Statement
hi link Operator Statement
hi link Keyword Statement
hi link Exception Statement

hi PreProc ctermfg=10 guifg=#afdf87
hi link Include PreProc
hi link Define PreProc
hi link Macro PreProc
hi link PreCondit PreProc

hi Type ctermfg=5 guifg=#afafdf cterm=none gui=none
hi link StorageClass Type
hi link Structure Type
hi link Typedef Type

hi Special ctermfg=1 guifg=#df8787
hi link SpecialChar Special
hi link Tag Special
hi link Delimiter Special
hi link SpecialComment Special
hi link Debug Special

hi Underlined ctermfg=blue cterm=underline guifg=#5787ff gui=underline

hi Ignore ctermfg=15 guifg=#ffffff
hi Error ctermfg=15 ctermbg=darkred guifg=#ffffff guibg=#800000
hi Todo ctermfg=1 ctermbg=bg guifg=#cf8282 guibg=bg
