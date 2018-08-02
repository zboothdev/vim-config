"Plugins Setup

" {{{ ctrlp
" 'kien/ctrlp.vim'
let g:ctrlp_max_files           = 0
let g:ctrlp_working_path_mode   = 'rw'
let g:ctrlp_custom_ignore       = {
    \ 'dir': '\v[\/](build|bitmaps)(BB|SYS|LDR|LDRBB|XLDR|FLSHLDR)(DBG|DVL|REL).*$',
    \ 'file': '\v\.(obj)$'}
let g:ctrlp_by_filename         = 1
let g:ctrlp_lazy_update         = 1
let g:ctrlp_use_caching         = 1
let g:ctrlp_cache_dir           = $HOME.'/.cache/ctrlp'
let g:ctrlp_clear_cache_on_exit = 0
" Use ag for ctrlp if available.
if executable('ag')
    let g:ctrlp_user_command = 'ag %s -U --nocolor -g ""'
endif
" }}}

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
