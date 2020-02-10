" Vim Plug plugins
call plug#begin('~/.vim/plugged')

" {{{ fzf
" PlugInstall and PlugUpdate will clone fzf in ~/.fzf and run install script
"set rtp+=~/.fzf
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
"Plug '~/.fzf'
  " Both options are optional. You don't have to install fzf in ~/.fzf
  " and you don't have to run install script if you use fzf only in Vim.
" }}}

" {{{ vim-go
"This plugin adds Go language support for Vim
Plug 'fatih/vim-go'
let g:go_version_warning = 0
" }}}

" {{{ vim-bitbake
"BitBake syntax highlighter
Plug 'kergoth/vim-bitbake'
" }}}

" {{{ vim-fugitive
"wrapper for git commands
Plug 'tpope/vim-fugitive'
" }}}

" {{{ vim-gitgutter
"signs for add, delete, change
Plug 'airblade/vim-gitgutter'
" }}}

"{{{ taglist
" Uses exuberant ctags.
Plug 'vim-scripts/taglist.vim'
" }}}

" {{{ nerdtree
" The NERD tree file explorer
Plug 'scrooloose/nerdtree'
" }}}

" {{{ vim-solarized
" Solarized colorscheme. Simpler fork of 'altercation/vim-colors-solarized'
Plug 'ericbn/vim-solarized'
" }}}

" {{{ Vim Linux Coding Style
Plug 'vivien/vim-linux-coding-style'
let g:linuxsty_patterns = [ "/projects/platforms/linux/ti/glsdk/kernel" ]
" }}}

" {{{ ack.vim
" Vim plugin for the Perl module / CLI script 'ack'
" Can also be used with ag.
Plug 'mileszs/ack.vim'
" }}}

" {{{ bufexplorer
Plug 'jlanzarotta/bufexplorer'
" }}}

" {{{ vim-airline
" Lean & mean status/tabline for vim that's light as air.
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" }}}

" {{{ vim-esearch
" NeoVim/Vim plugin performing project-wide async search and replace, similar to SublimeText, Atom et al.
Plug 'eugen0329/vim-esearch'
" }}}

" {{{ vim-tmux-navigator
" Smart pane switching.
Plug 'christoomey/vim-tmux-navigator'
" }}}

" {{{ vim-surround
" quoting/parenthesizing made simple
Plug 'tpope/vim-surround'
" }}}

" {{{ ale
" Asynchronous Lint Engine
Plug 'dense-analysis/ale'
let g:ale_cpp_ccls_init_options = {
    \  'cache': {
    \      'directory': '/tmp/ccls/cache'
    \  }
    \}
let g:ale_echo_msg_format = '[%linter%:%severity%]: %code: %%s'
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_cache_executable_check_failures = 1
" }}}

"Add plugins to &runtimepath
call plug#end()

" vim: set foldmethod=marker:
