let mapleader=" "
let g:netrw_banner=0
let g:ale_enabled=0

inoremap jj <Esc>:wa<CR>
nnoremap  <leader>ff :Ex<CR>
nnoremap  <leader>b :e#<CR>
nnoremap  <leader>fr :%s/search/replace/g
nnoremap  <leader>gg gg!G
nnoremap  <leader>v <C-v>
" nnoremap  <leader>t :vertical botright term<CR>
nnoremap  <leader>t :tab term<CR>
nnoremap  <leader>r :Run<CR>
nnoremap  <leader>w <C-w>w

set number
set relativenumber
set tabstop=2
set path=**
set incsearch
set autoindent
set wildmenu
set wildignorecase
set wildignore+=*.exe " don't do searches in executable files
set cindent
set shiftwidth=2
set nowrap
set scrolloff=20
set nocin
set autowrite
set autowriteall
set autoindent
set ignorecase
set errorformat=%f(%l\\,%c):\ error:\ %m  " error format for clang
set errorformat+=%f:%l:%c:\ %m " error format for go 
set errorformat+=---\ FAIL:\ %m " error format for go test 
set makeprg=.\make.bat

syntax on
set background=dark
colorscheme unokai 
highlight Normal guibg=#000000
highlight StatusLine guibg=#000000 guifg=#FFFFFF
hi IncSearch ctermbg=708090
hi Visual ctermbg=789

"easily find windows header files
command! -nargs=1 Findheader execute 'find C:\Program\ Files\ (x86)\Windows\ Kits\10\Include\10.0.26100.0\um\' . <q-args> 

" automatically open quickfix list if it contains any errors
augroup quickfix
	autocmd!
	autocmd QuickFixCmdPost [^l]* cwindow
	autocmd QuickFixCmdPost l* lwindow
augroup END
