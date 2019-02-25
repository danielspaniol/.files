" ███████╗████████╗ ██████╗    ██╗███╗   ██╗██╗   ██╗██╗███╗   ███╗    ██╗██╗███╗   ██╗██╗████████╗██╗   ██╗██╗███╗   ███╗
" ██╔════╝╚══██╔══╝██╔════╝   ██╔╝████╗  ██║██║   ██║██║████╗ ████║   ██╔╝██║████╗  ██║██║╚══██╔══╝██║   ██║██║████╗ ████║
" █████╗     ██║   ██║       ██╔╝ ██╔██╗ ██║██║   ██║██║██╔████╔██║  ██╔╝ ██║██╔██╗ ██║██║   ██║   ██║   ██║██║██╔████╔██║
" ██╔══╝     ██║   ██║      ██╔╝  ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║ ██╔╝  ██║██║╚██╗██║██║   ██║   ╚██╗ ██╔╝██║██║╚██╔╝██║
" ███████╗   ██║   ╚██████╗██╔╝   ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║██╔╝   ██║██║ ╚████║██║   ██║██╗ ╚████╔╝ ██║██║ ╚═╝ ██║
" ╚══════╝   ╚═╝    ╚═════╝╚═╝    ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝    ╚═╝╚═╝  ╚═══╝╚═╝   ╚═╝╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nobackup
set noswapfile
set enc=utf-8
set fenc=utf-8
set nocompatible
let g:mapleader=' '
filetype plugin on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.local/share/nvim/plugged')
Plug 'Townk/vim-autoclose'
Plug 'Valloric/YouCompleteMe'
Plug 'airblade/vim-gitgutter'
Plug 'kana/vim-operator-user'
Plug 'kien/ctrlp.vim'
Plug 'majutsushi/tagbar'
Plug 'rhysd/vim-clang-format'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'smallwat3r/vim-hashpunk-sw'
Plug 'tpope/vim-fugitive'
Plug 'vim-scripts/a.vim'
call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Files
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>fed :edit $MYVIMRC <cr>
map <leader>fer :source $MYVIMRC <cr>
map <leader>ft :NERDTreeToggle <cr>
map <leader>ff :CtrlP <cr>
autocmd FileType c,cpp map <leader>fa :A <cr>
let g:NERDTreeShowHidden = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Look
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number
set noshowmatch
set colorcolumn=81
colorscheme hashpunk-sw
hi Visual term=reverse cterm=reverse
hi Normal ctermbg=black
hi Search ctermbg=green ctermfg=black
hi Pmenu ctermbg=gray ctermfg=black
hi PmenuSel ctermbg=darkgray ctermfg=black

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Editor
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <leader>/ :noh <cr>
map <silent> <leader>kc :call NERDComment("n", "Comment") <cr>
map <silent> <leader>ku :call NERDComment("n", "Uncomment") <cr>
map <leader>tb :TagbarToggle <cr>
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
let g:clang_format#code_style="llvm"
let g:clang_format#detect_style_file=1
let g:clang_format#auto_format=1
autocmd FileType c,cpp map <leader>kd :ClangFormat <cr>
let &path.="include,src,"
let g:ycm_global_ycm_extra_conf = '~/.configl/YouCompleteMe/.ycm_extra_conf.py'
set autoindent
set smartindent
set ignorecase
set smartcase
set incsearch
set hlsearch
set scrolloff=13
let g:clang_complete_auto = 0
nnoremap    <Tab>               >>|"
nnoremap    <S-Tab>             <<
inoremap    <S-Tab>             <C-D>
vnoremap    <Tab>               >gv
vnoremap    <S-Tab>             <gv"
vnoremap    <C-c> "*y"

