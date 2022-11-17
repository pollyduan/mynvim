syntax on
set nocompatible
set list
set listchars=eol:$,tab:→→,extends:>,precedes:<
set number
set relativenumber
set tabstop=4
set softtabstop=4
set autoindent
set shiftwidth=2
set expandtab                 " expand tab to spaces
set hlsearch                  " high light search key
exec "nohlsearch"
set incsearch
set showcmd
set cursorline                " show line under line of cursor
set smartcase                 " Exact matching priority
set ignorecase                " search ignore case
set wildmenu                  " command pattern completion via TAB
"set clipboard=unnamedplus     " share system clipboard

"let mapleader = '<space>'    " set leader key as space

"==
"==== custom keymap
"==
nnoremap <leader>Q :q<cr>
nnoremap <leader>C :e ${MYVIMRC}<cr>
nnoremap <leader>R :source ${MYVIMRC}<cr>
inoremap jk <Esc>

"==
"==== Plugin configrations
"==
call plug#begin()
Plug 'gcmt/wildfire.vim'
Plug 'tpope/vim-surround'
Plug 'mg979/vim-visual-multi'
Plug 'vim-airline/vim-airline'                                            " bottom bar
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'preservim/nerdtree'
call plug#end()

nmap <S-Tab> :bprev<Return>
nmap <Tab> :bnext<Return>

" gcmt/wildfire.vim
nmap <leader>s <Plug>(wildfire-quick-select)
cal wildfire#triggers#AddQs("<leader>s", {
    \ "*" : ["i)", "i]"],
\ })


" vim-airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" morhetz/gruvbox'
autocmd vimenter * ++nested colorscheme gruvbox
set bg=dark

