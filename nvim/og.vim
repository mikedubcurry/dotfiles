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
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
let g:neoformat_try_node_exe = 1

call plug#begin('~/.vim/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'preservim/nerdtree'
Plug 'sbdchd/neoformat'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'nvim-treesitter/nvim-treesitter'
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

require("telescope").setup()
