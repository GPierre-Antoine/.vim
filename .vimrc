
" set and config
    set nocompatible tabstop=4 softtabstop=4 shiftwidth=4 expandtab smartindent
    set showcmd showmatch incsearch hlsearch nowrap backspace=indent,eol,start
    set noerrorbells vb t_vb=
    set listchars=eol:⏎,tab:→\ ,trail:•,nbsp:⎵

    set foldmethod=indent
    set foldlevel=0

    filetype indent on

    if (has('clipboard'))
        xnoremap <C-c> "+y
        nnoremap <C-v> "+p
    else
        xnoremap <C-c> :echo "No Clipboard"<cr>
        nnoremap <C-v> :echo "No Clipboard"<cr>
    endif

" functions
     function! ToggleCopyPasteMode()
         if &mouse == 'a'
             set mouse=v nonu nornu nolist
            syntax off
        else
             set mouse=a nu list
            syntax on
        endif
    endfunc

    call ToggleCopyPasteMode()

" maps
    " exit
        noremap <C-d> <Esc>:q<cr>

    " navigation
        nnoremap <C-PageUp> gg
        nnoremap <C-PageDown> G

    " folds
        nnoremap <space> za
        inoremap <C-z> <Esc>ui
        nnoremap <M-ScrollWheelUp> zm
        nnoremap <M-ScrollWheelDown> zr

    " selection
        nnoremap <C-w> <Esc>viw
        xnoremap <C-w> <S-V>
        nnoremap <C-a> ggvG$
        xnoremap <C-a> <Esc>ggvG$

    " tabs
        nnoremap <C-t> :tabnew <cr>
        nnoremap <C-Right> gt
        nnoremap <C-Left> gT

    nnoremap <C-Y> :call ToggleCopyPasteMode()<cr>
