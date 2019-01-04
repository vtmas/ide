set nocompatible
syntax on
set nowrap
set encoding=utf8

"""" START Vundle Configuration 

" Disable file type for vundle
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" Utility
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'tyrannicaltoucan/vim-quantum'
Plugin 'benmills/vimux'
Plugin 'craigemery/vim-autotag'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'vim-airline/vim-airline'
Plugin 'joshdick/onedark.vim'


Plugin 'vim-vdebug/vdebug'

call vundle#end()            " required
filetype plugin indent on    " required
"""" END Vundle Configuration 

set number

set tabstop=4
set shiftwidth=4
set smarttab
set expandtab

" set mouse=a

set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h14

nmap <F8> :TagbarToggle<CR>
let g:autotagTagsFile="tags"

map <F5> :w! \| :call VimuxRunCommand("clear; ./" . bufname("%"))<CR>
map <C-U> :VdebugStart<CR>
map <C-I> :call VimuxRunCommand("clear; perl -d " . bufname("%"))<CR>

let g:VimuxHeight = "25"
let g:VimuxOrientation = "v"

if exists('+termguicolors')
    let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
    set termguicolors
endif

colorscheme quantum
set laststatus=2
let g:airline#extensions#tabline#enabled=1
let g:airline_theme='bubblegum'
let g:airline_powerline_fonts=1
let g:airline#extensions#branch#enabled=1

" Indent Guides
let g:indentLine_enabled=1
let g:indentLine_color_term=235
let g:indentLine_char='┆'

 let g:vdebug_keymap = {
    \    "run" : "<C-o>",
    \    "run_to_cursor" : "<F1>",
    \    "step_over" : "<F2>",
    \    "step_into" : "<F3>",
    \    "step_out" : "<F4>",
    \    "close" : "<C-x>",
    \    "detach" : "<F7>",
    \    "set_breakpoint" : "<F6>",
    \    "get_context" : "<F11>",
    \    "eval_under_cursor" : "<F12>",
    \    "eval_visual" : "<Leader>e",
    \}
