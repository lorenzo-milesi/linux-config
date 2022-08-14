call plug#begin()

Plug 'preservim/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'itchyny/lightline.vim'
Plug 'ervandew/supertab'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'terryma/vim-multiple-cursors'
Plug 'godlygeek/tabular'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }

call plug#end()

" Defaults -----------------------------------------------------
syntax on
set nu
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set backspace=indent,eol,start
set splitbelow
set splitright
set autowriteall
set autoread
set noswapfile
set completeopt=menuone,noinsert,noselect
filetype plugin indent on
set encoding=UTF-8

" GUI ----------------------------------------------------------
set linespace=12
set guifont=CaskaydiaCove\ Nerd\ Font\ Mono:h17
set cursorline
hi Comment gui=italic
set colorcolumn=75,80,120
hi colorcolumn ctermbg=10
autocmd BufReadPost,BufNewFile * hi Comment ctermfg=8 cterm=italic
set hlsearch
set incsearch
hi LspReference ctermfg=red guifg=red ctermbg=green guibg=green

" Theme --------------------------------------------------------
set termguicolors
colorscheme catppuccin_frappe
let g:lightline = {'colorscheme': 'catppuccin_frappe'}

" Folding ------------------------------------------------------
set foldcolumn=2
set foldlevel=3
set foldmethod=expr
  \ foldexpr=lsp#ui#vim#folding#foldexpr()
  \ foldtext=lsp#ui#vim#folding#foldtext()

" Mapping ------------------------------------------------------
imap jk <Esc>
nnoremap <C-h> <C-w><C-h>
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <@> za
nmap <Leader><@> :nohlsearch<CR>

map <C-d> :NERDTreeToggle<CR>
map <Leader>f :NERDTreeFind<CR>
map <C-p> :Files<CR>
map <C-e> :History<CR>
map <C-f> :Rg

map <Leader>l :LspDocumentFormat<CR>
map <Leader>d :LspDocumentDiagnostics<CR>

" Plugins ------------------------------------------------------
let g:SuperTabDefaultCompletionType = "<c-n>"
