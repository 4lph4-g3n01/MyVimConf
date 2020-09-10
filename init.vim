syntax enable
set number
set t_Co=256
set mouse=a
set numberwidth=1
set clipboard=unnamed
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set cmdheight=1
set tabstop=2 
set smartindent
set autoindent
set cursorline
set noshowmode
filetype on
"current mode
" set colorcolumn=81
"set nu rnu

let g:currentmode={	
      \ 'n'  : 'NORMAL ',
      \ 'no' : 'N·Operator Pending ',
      \ 'v'  : 'VISUAL ',
      \ 'V'  : 'V·Line ',
      \ 'x22' : 'V·Block ',
      \ 's'  : 'SELECT ',
      \ 'S'  : 'S·Line ',
      \ 'x19' : 'S·Block ',
      \ 'i'  : 'INSERT ',
      \ 'R'  : 'REPLACE ',
      \ 'Rv' : 'V·Replace ',
      \ 'c'  : 'Command ',
      \ 'cv' : 'Vim Ex ',
      \ 'ce' : 'Ex ',
      \ 'r'  : 'Prompt ',
      \ 'rm' : 'More ',
      \ 'r?' : 'Confirm ',
      \ '!'  : 'Shell ',
      \ 't'  : 'TERMINAL '
      \}
"

"
"

"Hola mundo
"current mode
set statusline=
set statusline+=%0*\ %{toupper(g:currentmode[mode()])}
set statusline+=%#Folded#
set statusline+=\ %t
set statusline+=\ %M
set statusline+=\ %r
set statusline+=\ %F
set statusline+=%=
set statusline+=%#DiffAdd#
set statusline+=\ %y
set statusline+=\ %p%% 
set statusline+=\ %l:%c 
set statusline+=\ [%n] 

call plug#begin('~/.vim/plugged')

"temas

Plug 'morhetz/gruvbox'

"IDE
Plug 'easymotion/vim-easymotion'

Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'

Plug 'christoomey/vim-tmux-navigator'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'HerringtonDarkHolme/yats'

call plug#end()

let g:gruvbox_contrast_dark = "hard"
let g:gruvbox_hls_cursor = "orange"
colorscheme gruvbox
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#nerdtree_statusline = 1
let g:airline_section_z= '%y  %3p%%  %l:%L [%c]'
let g:airline_section_x=0
let g:airline_section_y=0
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:airline_section_warning=0
let NERDTreeQuitOnOpen=1
let mapleader= " "



nmap <Leader>s <Plug>(easymotion-s2)

nmap <Leader>nt :NERDTreeFind<CR>

nmap <Leader>w :w <CR>
nmap <Leader>q :q <CR>

"prueba
