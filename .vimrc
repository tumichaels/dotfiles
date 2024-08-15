set nocompatible	                    " need this to use vim rather than vi settings

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
" fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" git integration
Plug 'tpope/vim-fugitive'

" file viewer
Plug 'preservim/nerdtree'

" status bar
Plug 'itchyny/lightline.vim'

" colorscheme
Plug 'sainnhe/everforest'	
Plug 'dracula/vim', {'as':'dracula'}
call plug#end()



" colors:
syntax on				    " enable syntax highlighting

set t_Co=256				    " iterm2 supports 256 colors
set termguicolors			    " rich colorscheme with terminal support

set background=dark                         " darkmode
" let g:everforest_background='hard'          " higher contrast
" let g:everforest_better_performance = 1     " higher performance?
" colorscheme everforest		            " i like this bc it's green
colorscheme dracula

" tabs and indents:
set tabstop=8				    " tabs are 4 columns wide
set softtabstop=4			    " tabs treated as 4 spaces on insertion/delete
set shiftwidth=4			    " how many columns to shift when using `>>`
set expandtab				    " convert tabs to spaces (on by convention / PEP8 ?)
set backspace=indent,eol,start              " delete tabs, newlines, etc...

set smartindent				    " enable autoindent

" line numbers:
set number				    " enable line numbers
set numberwidth=4			    " number of columns to use for line numbers

" searching and highlighting:
set ignorecase				    " combined = ignore case unless capitals are used
set smartcase
set incsearch				    " highlight incrementally while searching
set nohlsearch				    " turn off highlights after search completes? -- look into this

" buffer related:
set hidden				    " open new buffer before saving

" scrolling:
set scrolloff=8				    " start scrolling when 8 lines from top/bottom (finally...)

" mouse:
set mouse=a				    " enable mouse support

" status bar
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'dracula',
      \ }

" remaps
let mapleader=" "
nnoremap <leader>pf :Files 

