﻿set nocp
call pathogen#infect('~/.vim/bundle/{}')
syntax on
filetype plugin indent on

set shell=/bin/bash   " set shell to bash

set background=dark   " set background to dark
color mango           " set color scheme to 'mango'

set vb t_vb=          " disbale visual bell
set viminfo=          " disable viminfo
set number            " show line numbers
set textwidth=80      " max text width (will force new line)
set hlsearch          " highligh search results

set autoindent        " auto indent (remember paste / nopaste)
set smartindent       " smart indentation
set tabstop=2         " tabs should insert 2 spaces
set shiftwidth=2      " tabs should be 2 spaces long
set expandtab         " replace tabs with spaces (insert)

set splitright        " opens new vertical splits to the right
set splitbelow        " opens new horisontal splits bellow

" cutom key mappings
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
" nnoremap <silent> <leader><Tab> <c-w>w
"nnoremap <silent> <leader>n gt
"nnoremap <silent> <leader>p gT

" au BufWritePost *.coffee silent CoffeeMake! -b | cwindow | redraw!

let g:bufferline_echo = 0 " ingore bufferline line
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git' " ignore some ctrlp dirs
let g:ctrlp_custom_ignore = '\~/Developer/eta2/app/src'

augroup json_autocmd 
  autocmd! 
  autocmd FileType json set autoindent 
  autocmd FileType json set formatoptions=tcq2l 
  autocmd FileType json set textwidth=78 shiftwidth=2 
  autocmd FileType json set softtabstop=2 tabstop=8 
  autocmd FileType json set expandtab 
  autocmd FileType json set foldmethod=syntax 
augroup END
