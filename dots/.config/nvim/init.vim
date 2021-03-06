" If no vim-plug, install it
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'Yggdroot/indentLine'
Plug 'ajh17/Spacegray.vim'
Plug 'cloudhead/neovim-fuzzy'
Plug 'dracula/vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'leshill/vim-json'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'w0rp/ale'

call plug#end()

highlight clear ALEWarningSign
highlight clear ALEErrorSign

set number

" Variables
let g:NERDDefaultAlign = 'left'
let g:NERDSpaceDelims = 1
let g:ale_echo_msg_format = '%linter% says %s'
let g:ale_fix_on_save = 1
let g:ale_fixers = {'javascript': ['eslint']}
let g:ale_linters = {'javascript': ['eslint', 'flow']}
let g:ale_sign_error = '!'
let g:ale_sign_warning = '?'
let g:indentLine_char = '|'
let g:javascript_plugin_flow = 1
let g:jsx_ext_required = 0

let NERDTreeQuitOnOpen=1

" Bindings
map <c-e> :NERDTreeToggle<cr>
map <c-p> :FuzzyOpen<cr>
map <leader>? :lcl<cr>
map <leader>/ :lop<cr>
nmap <c-Tab> :tabmove -1<cr>
nmap <c-s-Tab> :tabmove +1<cr>
nmap <c-k> <Plug>(ale_previous_wrap)
nmap <c-j> <Plug>(ale_next_wrap)
