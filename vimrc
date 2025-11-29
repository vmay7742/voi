syntax on
set number
set mouse=a
set tabstop=4
set shiftwidth=4
set expandtab
set ai
set hlsearch
set showmatch
set wrap
set nocompatible

set cursorline
hi cursorline ctermfg=231 ctermbg=236 cterm=NONE gui=NONE guibg=black term=NONE
hi CursorLineNR ctermfg=231 ctermbg=236 cterm=bold gui=NONE guibg=NONE term=NONE
hi StatusLineNC ctermfg=231 ctermbg=236 cterm=bold gui=NONE guibg=NONE term=NONE
hi LineNr ctermfg=246

hi Pmenu ctermfg=231 ctermbg=0 cterm=NONE gui=NONE guibg=black term=NONE 
hi PmenuSel ctermfg=231 ctermbg=236 cterm=NONE gui=NONE guibg=black term=NONE

hi VertSplit ctermfg=231 ctermbg=NONE cterm=NONE gui=NONE guibg=black term=NONE

hi TabLineFill ctermfg=234 ctermbg=NONE term=NONE
hi TabLine ctermfg=250 ctermbg=NONE cterm=NONE gui=NONE guibg=NONE term=NONE
hi TabLineSel ctermfg=50 ctermbg=NONE cterm=NONE gui=NONE guibg=NONE term=NONE

hi Comment ctermfg=114

hi Search ctermfg=231 ctermbg=26 cterm=NONE

hi StatusLine ctermbg=NONE cterm=NONE

nmap <silent> <C-t> :tabnew<CR>
nmap <silent> <C-n> :tabnext<CR>
nmap <silent> <C-x> :tabclose<CR>

nnoremap <silent> <C-e> :Vexplore<CR>
let g:netrw_banner = 0
let g:netrw_liststyle = 3  " Tree view

vnoremap <C-c> :w !xclip -sel c<CR><CR>  " Visual mode copy (Ctrl+C)
inoremap <Tab> <C-x><C-f>
