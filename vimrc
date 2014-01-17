if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
  set t_Co=256
endif
execute pathogen#infect()
let g:zenburn_old_Visual=1
let g:zenburn_alternate_Visual=1
colorscheme zenburn
syntax on
filetype plugin indent on
:set softtabstop=4
:set expandtab
:set shiftwidth=4

" Toggle line numbers
:nmap \l :setlocal number!<CR>

" Disable linewise move up / down
:nmap j gj
:nmap k gk

" Highlight as search is typed
:set incsearch

" Case insensitive search except if there is a caps in search term
:set ignorecase
:set smartcase
:set hlsearch

" Disable highlighting
:nmap \q :nohlsearch<CR>

" Enable line numbers
:set number

" Return back to previous file
:nmap <C-e> :e#<CR>

" Cycle through open buffers
:nmap <C-n> :bnext<CR>
:nmap <C-p> :bprev<CR>

" Enable mouse
:set mouse=a

" For powerline plugin
:set nocompatible
:set laststatus=2
:set encoding=utf-8

" Ctrl-P options
:nmap ; :CtrlPBuffer<CR>
:nmap \m :CtrlPMRU<CR>
:let g:ctrlp_map = '<Leader>t'
:let g:ctrlp_match_window_bottom = 0
:let g:ctrlp_match_window_reversed = 0
:let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\])\.(hg|git|bzr)($|[/\\])|__init__\.py'
:let g:ctrlp_working_path_mode = 0
:let g:ctrlp_dotfiles = 0
:let g:ctrlp_switch_buffer = 0
:let g:ctrlp_mruf_max = 250

" Fix number format so digits are not interpreted as octal
set nrformats=

" Supertab
let g:SuperTabDefaultCompletionType = "context"
let g:jedi#auto_close_doc = 1
" autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
