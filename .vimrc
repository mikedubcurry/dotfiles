set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set smartindent
set exrc
set relativenumber
set nu
set nohlsearch
set guicursor
set hidden
set noerrorbells
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set termguicolors
set scrolloff=8
set colorcolumn=80
set signcolumn=yes

let g:neoformat_try_node_exe = 1

call plug#begin('~/.vim/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'preservim/nerdtree'
Plug 'sbdchd/neoformat'
call plug#end()


fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup MIKEDUBCURRY
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
    autocmd BufWritePre *.js Neoformat
    autocmd BufWritePre *.jsx Neoformat
augroup END

