let mapleader=" "
set number
set relativenumber

set tabstop=2
inoremap jj <Esc>

syntax on
set background=dark
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox
set termguicolors

let g:netrw_banner = 0
set path=**
set incsearch
set autoindent
set wildmenu
set wildignorecase

nnoremap <leader>t :vimgrep // **/*<Left><Left><Left><Left><Left><Left>
set cindent
set shiftwidth=2
nnoremap <leader>n :ALENextWrap<CR>
autocmd FileType css setlocal omnifunc=syntaxcomplete#Complete
set nowrap
nnoremap <leader>gg gg!G
set scrolloff=8
set scrolloff=8
nnoremap <leader>ff :Ex<CR>
nnoremap <leader>b :e#<CR>
set nowrap
set makeprg=clear\ &&\ make
