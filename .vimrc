syntax enable
color termcasts
set antialias
set encoding=utf-8
set cindent
set nocompatible
set backspace=indent,eol,start
set incsearch
set hlsearch
set tabstop=4
set shiftwidth=4
set expandtab
filetype plugin indent on
set sm
set listchars=tab:»\
set number
set cursorline

" Status line
set laststatus=2
set statusline=%<%f\ %y%m%r%=%-14.(%l,%c%V%)\ %P

" Highlight traling whitespace

highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Close the omni completion tip window after selection is made

autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

" Markdown support

autocmd BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

" Local file type settings

autocmd FileType gitcommit setlocal textwidth=72 spell
autocmd FileType html setlocal tabstop=2 shiftwidth=2
autocmd FileType markdown setlocal textwidth=72 spell

" Load vimrc from current directory. Use secure mode to limit commands in
" local rc file.
set exrc
set secure

" GUI settings

set guifont=Monospace\ 11
set guioptions-=T " Disable toolbar
