set tabstop=4 softtabstop=4 shiftwidth=4
set expandtab
set smartindent

set showcmd
filetype indent on
set showmatch
set incsearch hlsearch

set noerrorbells
set vb t_vb=

set listchars=eol:⏎,trail:→,nbsp:⎵,tab:→·

nnoremap <C-N><C-N> :set relativenumber!<cr>
nnoremap <C-tab> :call ToggleCopyPasteMode()<cr>
nnoremap <C-D> :q<cr>

function! ToggleCopyPasteMode()
    if &mouse == 'a' 
        set mouse=v nonu nornu nolist
        syntax off 
    else
        set mouse=a nu list
        syntax on
    endif
endfunc

call CopyPasteMode()
