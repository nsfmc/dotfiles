" defaults
syntax on

set showcmd 
let mapleader="-"

" reload files when changed by hooks, prettier, branch changes, etc
set autoread

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
packadd! outer-sunset
" colorscheme OuterSunset
colorscheme night-owl

" fzf (adios command t)
" this is the fzf dir created by homebrew
if (isdirectory('/usr/local/opt/fzf'))
  set rtp+=/usr/local/opt/fzf
  nnoremap <leader>t :call fzf#run({'source': 'git ls-files', 'sink': 'e', 'window': { 'width': 1.0, 'height': 0.5, 'relative': v:true, 'yoffset': 1.0 } })<cr>
endif

" coc
" config handled externally???
" but, leader-h for type under point
nnoremap <silent> <leader>h :call CocActionAsync('doHover')<cr>

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

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)


" airline
if has('gui_running')
  " set guifont=Fira\ Mono:h14
  " let g:airline_symbols_ascii = 1
endif

nmap <F8> :TagbarToggle<CR>
let g:airline#extensions#tagbar#enabled = 1

let g:airline#extensions#default#section_truncate_width = {
  \ 'b': 100,
  \ 'x': 140,
  \ 'y': 120,
  \}

