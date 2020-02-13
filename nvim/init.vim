set number
set relativenumber
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

let mapleader = "\<SPACE>"

imap jk <ESC>

nnoremap <F1> :NERDTreeToggle<CR>
nnoremap <C-F1> :NERDTreeFind<CR>

""Configuração de Plugins
call plug#begin('~/.local/share/nvim/plugged')
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'junegunn/fzf', { 'do': './install --all' }
Plug 'janko-m/vim-test'
Plug 'mattn/emmet-vim'
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

colorscheme dracula
