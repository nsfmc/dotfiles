" defaults
syntax on

set showcmd 
let mapleader="-"


" indents go here
filetype indent plugin on
set tabstop=2 		  " 2-wide tabs
set shiftwidth=2 	  " ditto for indent
set softtabstop=2	  " uhhhh... 
set expandtab	  	  " tabs -> spaces

if has("autocmd")
  " but use real tabs for make and p8
  autocmd FileType make set tabstop=4 shiftwidth=4 softtabstop=0 noexpandtab
  autocmd FileType pico8 set tabstop=2 shiftwidth=2 softtabstop=2 noexpandtab
endif

" 
" wildignore paths
" ignore node modules
:set wildignore+=*/node_modules
" ignore incremental build assets for rust projects
:set wildignore+=*/target/debug,*/target/CACHEDIR.TAG

" pico8 lol
:packadd vim-pico8-syntax


" night-owl 

if (has("termguicolors"))
 set termguicolors
endif

packadd! night-owl
colorscheme night-owl


" coc
" config handled externally???
" however, use enter to confirm an autocomplete
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>"

" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"


" airline
" let g:airline_powerline_fonts = 1

" command-t


