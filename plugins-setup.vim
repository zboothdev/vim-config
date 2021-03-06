"Plugins Setup

" {{{ ack.vimx
" Vim plugin for the Perl module / CLI script 'ack'
" Can also be used with ag.
if executable('ag')
    let g:ackprg = 'ag --nogroup --nocolor --column --smart-case'
endif

cnoreabbrev ag Ack
cnoreabbrev aG Ack
cnoreabbrev Ag Ack
cnoreabbrev AG Ack
" }}}

" {{{ vim-airline
" 'vim-airline/vim-airline'
set laststatus=2
let g:airline#extensions#tabline#enabled = 1 " Show buffer list in airline
let g:airline_powerline_fonts = 1 " Use Powerline fonts
let g:airline_theme='dark'
" }}}

" {{{ vim-esearch
" NeoVim/Vim plugin performing project-wide async search and replace, similar to SublimeText, Atom et al.
 let g:esearch = {
       \ 'adapter':    'rg',
       \ 'backend':    'system',
       \ 'out':        'win',
       \ 'batch_size': 1000,
       \ 'wordchars': '@,48-57,_,192-255',
       \ 'use':        ['visual', 'hlsearch', 'last'],
       \}

     let g:esearch#out#win#open = 'vertical botright new'
     let g:esearch#adapter#ag#options = "-U"
     let g:esearch#util#trunc_omission = "|"
" }}}

" vim: set foldmethod=marker:
