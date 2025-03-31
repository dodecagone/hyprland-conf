set nocompatible
filetype on 
filetype plugin on
filetype indent on
set number
set shiftwidth=4
set tabstop=4
set mouse=a
set expandtab
set nobackup
set scrolloff=10
set nowrap
set incsearch
set ignorecase
set smartcase
set showcmd
set showmode
set showmatch
set hlsearch
set history=100

" set linebreak
" set textwidth=80

set incsearch
set lazyredraw
set colorcolumn=80

set cursorline

set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx

syntax on
set termguicolors
colorscheme dune


     " PLUGINS ---------------------------------------------------------------- {{{

    " Plugin code goes here.
    call plug#begin()

        Plug 'vim-airline/vim-airline'
        Plug 'vim-syntastic/syntastic'

    call plug#end()

   " }}}


" MAPPINGS --------------------------------------------------------------- {{{

" Mappings code goes here.
map <F10> :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>
" }}}


" VIMSCRIPT -------------------------------------------------------------- {{{

" This will enable code folding.
" Use the marker method of folding.
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

" More Vimscripts code goes here.

" }}}


" STATUS LINE ------------------------------------------------------------ {{{

" Status bar code goes here.

" }}}
