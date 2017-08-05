set nocompatible
set ic
syntax on
set tabstop=4        
set softtabstop=4    
set shiftwidth=4     
set noexpandtab      
filetype plugin indent on
hi Folded ctermbg=blue ctermfg=white
set foldmethod=marker
set foldmarker=##start,##end
nnoremap <space> za
set hidden
set rtp+=~/.vim/bundle/Vundle.vim
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
syntax on
set number
set t_Co=256
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'ajf/puppet-vim'
Plugin 'honza/vim-snippets.git'
Plugin 'garbas/vim-snipmate.git'
Plugin 'MarcWeber/vim-addon-mw-utils.git'
Plugin 'tomtom/tlib_vim.git'
Plugin 'xolox/vim-notes'
Plugin 'scrooloose/nerdtree'
Plugin 'vim-misc'
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'https://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'user/L9', {'name': 'newL9'}
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
call vundle#end()            " required
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
colorscheme koehler
set termencoding=utf-8
set laststatus=2
set cursorline
hi CursorLine guibg=Grey10
"set listchars=eol:¬,tab:\▸\ ,extends:>,precedes:<
highlight SpecialKey ctermfg=3
nnoremap <c-d> "=strftime("%c")<CR>P
inoremap <c-d> <C-R>=strftime("%c")<CR>
let mapleader = " "
map <C-n> :NERDTreeToggle<CR>
