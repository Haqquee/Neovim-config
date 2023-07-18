: set number
: set relativenumber
: set autoindent
: set shiftwidth=4
: set mouse=a
: set autoindent
: set tabstop=4
: set smarttab
: set softtabstop=4
: syntax enable
: set smartindent
: set wrap
: set linebreak
: set breakindent
: set showbreak=4

call plug#begin()

Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/tpope/vim-surround'
Plug 'https://github.com/tpope/vim-commentary'
Plug 'nvim-telescope/telescope.nvim'
Plug 'williamboman/mason.nvim'
Plug 'williamboman/mason-lspconfig.nvim'
Plug 'neovim/nvim-lspconfig'

call plug#end()
lua << EOF
local nvim_lsp = require('lspconfig')

-- HTML
nvim_lsp.html.setup{}

-- CSS
nvim_lsp.cssls.setup{}

-- JavaScript/TypeScript/React
nvim_lsp.tsserver.setup{}
EOF

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
