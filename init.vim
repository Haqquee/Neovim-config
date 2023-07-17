: set number
: set relativenumber
: set autoindent
: set shiftwidth=4
: set mouse=a
: set autoindent
: set tabstop=4
: set smarttab
: set softtabstop=4

call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/tpope/vim-commentary'

call plug#end()


nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>