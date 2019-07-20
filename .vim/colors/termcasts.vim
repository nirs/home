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

hi Normal                    guifg=white guibg=#1c1c1c ctermfg=white ctermbg=234
hi Cursor                    guifg=black guibg=white ctermfg=0 ctermbg=black
hi CursorLine                guibg=#262626 ctermbg=235
hi CursorLineNr              guifg=#808080 ctermfg=grey
hi LineNr                    guifg=#6c6c6c ctermfg=darkgrey
hi Search                    guibg=yellow guifg=black gui=bold ctermbg=yellow ctermfg=black cterm=bold
hi Visual                    guibg=#5f5f87 ctermbg=60
hi StatusLine                guifg=#6c6c6c ctermfg=darkgrey
hi StatusLineNC              guibg=#444444 ctermfg=238
hi VertSplit                 guibg=#6c6c6c guifg=#6c6c6c ctermbg=darkgrey
hi ColorColumn               guibg=#262626 ctermbg=235

" Folds
" -----
" line used for closed folds
hi Folded                    guifg=#F6F3E8 guibg=#444444 gui=NONE

" Invisible Characters
" ------------------
hi NonText                   guifg=#6c6c6c ctermfg=darkgrey
hi SpecialKey                guifg=#6c6c6c ctermfg=darkgrey

" Misc
" ----
" directory names and other special names in listings
hi Directory                 guifg=#A5C261 gui=NONE ctermfg=107

" Popup Menu
" ----------
" normal item in popup
hi Pmenu                     guifg=#F6F3E8 guibg=#444444 gui=NONE
" selected item in popup
hi PmenuSel                  guifg=black guibg=#A5C261 gui=NONE
" scrollbar in popup
hi PMenuSbar                 guibg=#5A647E gui=NONE
" thumb of the scrollbar in the popup
hi PMenuThumb                guibg=#AAAAAA gui=NONE

" Common
hi Comment                   guifg=#af875f gui=italic ctermfg=137
hi Todo                      guifg=#875f00 guibg=NONE gui=bold ctermfg=94 ctermbg=NONE cterm=bold
hi Constant                  guifg=#5fafaf ctermfg=73
hi Delimiter                 guifg=darkgreen ctermfg=darkgreen
hi Error                     guifg=#ffd75f guibg=darkred ctermfg=221 ctermbg=darkred
hi Function                  guifg=#ffd75f gui=bold ctermfg=221 cterm=bold
hi Identifier                guifg=#5fafaf gui=NONE ctermfg=73 cterm=NONE
hi Keyword                   guifg=#d78700 ctermfg=172
hi Number                    guifg=#87af5f ctermfg=107
hi Statement                 guifg=#d78700 gui=bold ctermfg=172 cterm=bold
hi String                    guifg=#87af5f ctermfg=107
hi Title                     guifg=white ctermfg=white
hi Type                      guifg=lightgreen ctermfg=lightgreen

" Preprocessor
hi PreProc                   guifg=#8787af ctermfg=103
hi Include                   guifg=#d7875f gui=NONE ctermfg=173 cterm=NONE
hi PreProc                   guifg=#8787af ctermfg=103
hi Define                    guifg=#d7875f ctermfg=173
hi Macro                     guifg=#d78700 ctermfg=172
hi PreCondit                 guifg=#d78700 gui=NONE ctermfg=172 cterm=NONE

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

