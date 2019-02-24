" ███████╗████████╗ ██████╗    ██╗███╗   ██╗██╗   ██╗██╗███╗   ███╗    ██╗██╗███╗   ██╗██╗████████╗██╗   ██╗██╗███╗   ███╗
" ██╔════╝╚══██╔══╝██╔════╝   ██╔╝████╗  ██║██║   ██║██║████╗ ████║   ██╔╝██║████╗  ██║██║╚══██╔══╝██║   ██║██║████╗ ████║
" █████╗     ██║   ██║       ██╔╝ ██╔██╗ ██║██║   ██║██║██╔████╔██║  ██╔╝ ██║██╔██╗ ██║██║   ██║   ██║   ██║██║██╔████╔██║
" ██╔══╝     ██║   ██║      ██╔╝  ██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║ ██╔╝  ██║██║╚██╗██║██║   ██║   ╚██╗ ██╔╝██║██║╚██╔╝██║
" ███████╗   ██║   ╚██████╗██╔╝   ██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║██╔╝   ██║██║ ╚████║██║   ██║██╗ ╚████╔╝ ██║██║ ╚═╝ ██║
" ╚══════╝   ╚═╝    ╚═════╝╚═╝    ╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝    ╚═╝╚═╝  ╚═══╝╚═╝   ╚═╝╚═╝  ╚═══╝  ╚═╝╚═╝     ╚═╝

set nobackup
set noswapfile

set number

call plug#begin('~/.local/share/nvim/plugged')
Plug 'Valloric/YouCompleteMe'
Plug 'scrooloose/nerdtree'
Plug 'smallwat3r/vim-hashpunk-sw'
Plug 'kien/ctrlp.vim'
call plug#end()

let g:mapleader=' '
map <leader>fed :edit $MYVIMRC <cr>
map <leader>fer :source $MYVIMRC <cr>
map <leader>ft :NERDTreeToggle <cr>
map <leader>ff :CtrlP <cr>

set colorcolumn=81

colorscheme hashpunk-sw
hi Visual term=reverse cterm=reverse
hi Normal ctermbg=black
hi Search ctermbg=green ctermfg=black
hi Pmenu ctermbg=gray ctermfg=black
hi PmenuSel ctermbg=darkgray ctermfg=black

