" UI {{{
syntax enable
set showmode
set laststatus=2
set background=dark
set number     " Line numbers
set ruler      " Show line numbers on the bar
set hidden     " allows changing buffer with unsaved changes
set showcmd    " Show (partial) command in status line.
set showmatch  " Show matching brackets
set title      " Set window name to file name
set cursorline " highlight current line
set wildmenu   " enhanced command-line completion
set lazyredraw " redraw only when we need to.
colorscheme solarized
" }}}

" Spaces & Tabs & Indents {{{
filetype plugin indent on
set smartindent autoindent
set tabstop=2     " # of visual spaces per TAB
set softtabstop=2 " # of fspaces in TAB when editing
set shiftwidth=2
set expandtab     " tabs are spaces
set scrolloff=5   " min # lines above/below cursor
set copyindent    " use existing indents for new indents
" }}}

" Searching {{{
set hlsearch   " highlight the searchterms
set incsearch  " jump to matches while typing
set ignorecase " ignore case while searching if all lowercase
set smartcase
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
" }}}

" Folding {{{
set foldenable        " enable folding
set foldlevelstart=10 " open most folds by default
                      " space open/closes folds
nnoremap <space> za
set foldmethod=indent " fold based on indent level
" }}}

" Misc {{{
set autoread
set autowrite
set noerrorbells
set backspace=indent,eol,start "allow backpacing over autoindent, eol, start
set mouse=a
set clipboard=unnamed
set noesckeys
set nocompatible
imap jj <Esc> " Map escape key to jj
" }}}

" Switch Window CMDs {{{
nnoremap <C-k>      <C-W>k
nnoremap <C-j>      <C-W>j
nnoremap <C-h>      <C-W>h
nnoremap <C-l>      <C-W>l

imap <c-h> <Esc><c-h>
imap <c-j> <Esc><c-j>
imap <c-k> <Esc><c-k>
imap <c-l> <Esc><c-l>

" }}}

" Leader CMDs {{{
set listchars=tab:>-,trail:·,eol:$
nmap <silent> <leader>s :set nolist!<CR>

" }}}

" Silver Searcher {{{
" open ag.vim
nnoremap <leader>a :Ag
" }}}

" NerdTree {{{
" Leader+d activates NERDTree
nore <leader>d :NERDTreeToggle <Enter>
" }}}

"CtrlP {{{
" tell CtrlP to order matching files top to bottom with ttb
let g:ctrlp_match_window = 'bottom,order:ttb'
" open files in new buffers
let g:ctrlp_switch_buffer = 0
" lets us change the working directory during a Vim session and make CtrlP
" respect that change
let g:ctrlp_working_path_mode = 0
" speeds up CtrlP
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
" }}}

" Syntastic {{{

" Show the error list automatically
" Allows you to easily navigate the quick fix list
let g:syntastic_auto_loc_list=1

" Do not automatically jump to the error when saving the file
" Jump feature is annoying to me as it automatically moves the cursor
let g:syntastic_auto_jump=0

" Don't on save+close
let g:syntastic_check_on_wq = 0

" Replace symbols
let g:syntastic_error_symbol = "✗"
let g:syntastic_warning_symbol = "⚠"

" }}}

" Airline {{{
let g:airline_powerline_fonts = 1
let g:airline_theme='papercolor'
" }}}

" Tagbar {{{
" Leader+t for Tagbar
nnoremap <leader>t :TagbarToggle<CR>
" }}}

" You Complete Me! {{{
" let g:ycm_global_ycm_extra_conf = "~/.vim/plugged/youcompleteme/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"
" let g:ycm_autoclose_preview_window_after_insertion = 1
" let g:ycm_collect_identifiers_from_tags_files = 1
" let g:ycm_seed_identifiers_with_syntax = 1
" https://github.com/Valloric/YouCompleteMe/issues/1018
" let g:ycm_path_to_python_interpreter = '/usr/bin/python'
" let g:ycm_server_use_vim_stdout = 0
" let g:ycm_server_keep_logfiles = 1
" let g:ycm_server_log_level = 'debug'

" map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF
" }}}

" Easymotion {{{
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
nmap s <Plug>(easymotion-overwin-f2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
" }}}

" Misc CMDs {{{
imap jj <Esc>
imap jJ <Esc>
imap Jj <Esc>
imap JJ <Esc>

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" highlight last inserted text
nnoremap gV `[v`]

map a <Nop>
map q <Nop>
" }}}

" Vim-Plug {{{
call plug#begin('~/.vim/plugged')

" Nerdtree
Plug 'scrooloose/nerdtree'

" Syntastic
Plug 'scrooloose/syntastic'

" Surround for easy quoting/parans/brackets/etc.
" Usage: cs'{ within 'dfsasfd' to change it to {dfsasfd}
Plug 'tpope/vim-surround'

" CtrlP
Plug 'kien/ctrlp.vim'

" AG - Silver Searcher
Plug 'rking/ag.vim'

" Airline
Plug 'bling/vim-airline'

" Airline Themes
Plug 'vim-airline/vim-airline-themes'

" Fugitive
Plug 'tpope/vim-fugitive'

" VIM solarized colors
Plug 'altercation/vim-colors-solarized'

" NERDCommenter
Plug 'scrooloose/nerdcommenter'

" Tagbar
Plug 'majutsushi/tagbar'

" Git Gutter
Plug 'airblade/vim-gitgutter'

" You complete me!
" Plug 'valloric/youcompleteme', { 'do': './install.py --clang-completer' }

" Easymotion
Plug 'easymotion/vim-easymotion'

" Tabular
Plug 'godlygeek/tabular'

" Add plugins to &runtimepath
call plug#end()
" }}}

set modelines=1 " check the last line for a mode line
" vim:foldmethod=marker:foldlevel=0
