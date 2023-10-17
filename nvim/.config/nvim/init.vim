set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
set wildmode=longest,list   " get bash-like tab completions
set clipboard=unnamedplus   " using system clipboard
filetype plugin on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
set spell                 " enable spell check (may need to download language package)
" set noswapfile            " disable creating swap file
set backupdir=~/.cache/vim " Directory to store backup files.
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()            " required
Plugin 'VundleVim/Vundle.vim'  " required
" " my plugins here
Plugin 'dracula/vim', { 'name': 'dracula' }
" Plugin 'honza/vim-snippets'
Plugin 'scrooloose/nerdtree'
" Plugin 'preservim/nerdcommenter'
Plugin 'mhinz/vim-startify'
" Plugin 'neoclide/coc.nvim', {'branch': 'release'}
" Plugin 'pappasam/coc-jedi', { 'do': 'yarn install --frozen-lockfile && yarn build', 'branch': 'main' }
Plugin 'davidhalter/jedi-vim'
Plugin 'psf/black', {'branch': 'stable'}
" Plugin 'ncm2/ncm2'
" Plugin 'roxma/nvim-yarp'
" Plugin 'ncm2/ncm2-jedi'
" " end of plugins
call vundle#end()               " required

filetype plugin indent on       " required

syntax enable
colorscheme dracula

nnoremap <C-t> :NERDTreeToggle<CR>
" autocmd VimEnter * NERDTree | wincmd p
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

