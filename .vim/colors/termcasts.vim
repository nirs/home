" Vim color scheme
"
" Name:        termcasts.vim
" Maintainer:  Nir Soffer <nirsof@gmail.com>
" License:     public domain
"
" A modified railcasts.vim [1] with improved cterm support.
" railcasts.vim is a GUI Only port of the RailsCasts TextMate theme [2] to Vim.
" Some parts of this theme were borrowed from the well-documented Lucius theme [3].
"
" [1] http://www.vim.org/scripts/script.php?script_id=1995
" [2] http://railscasts.com/about
" [3] http://www.vim.org/scripts/script.php?script_id=2536

set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "termcasts"

" Colors
" Brown        #BC9458
" Dark Blue    #6D9CBE
" Dark Green   #519F50
" Dark Orange  #CC7833
" Light Blue   #D0D0FF
" Light Green  #A5C261
" Tan          #FFC66D

hi Normal                    guifg=#E6E1DC guibg=#2B2B2B ctermfg=white ctermbg=234
hi Cursor                    guifg=#000000 guibg=#FFFFFF ctermfg=0 ctermbg=15
hi CursorLine                guibg=#333435 ctermbg=235 cterm=NONE
hi CursorLineNr              guifg=#bbbbbb ctermfg=grey
hi LineNr                    guifg=#888888 ctermfg=darkgrey
hi Search                    guibg=yellow ctermbg=yellow cterm=bold
hi Visual                    guibg=#5A647E ctermbg=60
hi StatusLine                guibg=#414243 gui=NONE guifg=#E6E1DC ctermfg=darkgrey
hi StatusLineNC              guibg=#414243 gui=NONE ctermfg=238
hi VertSplit                 guibg=#414243 gui=NONE guifg=#414243
hi ColorColumn               guibg=#333435 ctermbg=235

" Folds
" -----
" line used for closed folds
hi Folded                    guifg=#F6F3E8 guibg=#444444 gui=NONE

" Invisible Characters
" ------------------
hi NonText                   guifg=#A5C261 ctermfg=darkgrey
hi SpecialKey                guifg=#A5C261 ctermfg=darkgrey

" Misc
" ----
" directory names and other special names in listings
hi Directory                 guifg=#A5C261 gui=NONE

" Popup Menu
" ----------
" normal item in popup
hi Pmenu                     guifg=#F6F3E8 guibg=#444444 gui=NONE
" selected item in popup
hi PmenuSel                  guifg=#000000 guibg=#A5C261 gui=NONE
" scrollbar in popup
hi PMenuSbar                 guibg=#5A647E gui=NONE
" thumb of the scrollbar in the popup
hi PMenuThumb                guibg=#AAAAAA gui=NONE

" Common
hi Comment                   guifg=#BC9458 gui=italic ctermfg=137
hi Todo                      guifg=#BC9458 guibg=NONE gui=italic ctermfg=94
hi Constant                  guifg=#6D9CBE ctermfg=73
hi Delimiter                 guifg=#519F50
hi Error                     guifg=#FFFFFF guibg=#990000 ctermfg=221 ctermbg=88
hi Function                  guifg=#FFC66D gui=bold ctermfg=221 cterm=bold
hi Identifier                guifg=#D0D0FF gui=NONE ctermfg=73 cterm=NONE
hi Keyword                   guifg=#CC7833 ctermfg=172 cterm=NONE
hi Number                    guifg=#A5C261 ctermfg=107
hi Statement                 guifg=#CC7833 gui=bold ctermfg=172 cterm=bold
hi String                    guifg=#A5C261 ctermfg=107
hi Title                     guifg=#FFFFFF ctermfg=15
hi Type                      guifg=#DA4939 gui=NONE

" Preprocessor
hi PreProc                   guifg=#CC7833 gui=NONE ctermfg=103
hi Include                   guifg=#CC7833 gui=NONE ctermfg=173 cterm=NONE
hi PreProc                   guifg=#CC7833 gui=NONE ctermfg=103
hi Define                    guifg=#CC7833 ctermfg=173
hi Macro                     guifg=#CC7833 gui=NONE ctermfg=172
hi PreCondit                 guifg=#CC7833 gui=NONE ctermfg=172 cterm=NONE

" diff
hi DiffAdd                   guifg=#E6E1DC guibg=#144212
hi DiffDelete                guifg=#E6E1DC guibg=#660000

" html
hi link htmlTag              xmlTag
hi link htmlTagName          xmlTagName
hi link htmlEndTag           xmlEndTag

" xml
hi xmlTag                    guifg=#E8BF6A
hi xmlTagName                guifg=#E8BF6A
hi xmlEndTag                 guifg=#E8BF6A

