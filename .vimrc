set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" The bundles you install will be listed here

Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

Bundle 'flazz/vim-colorschemes'

Bundle 'scrooloose/nerdtree'

Bundle 'klen/python-mode'

Bundle 'bling/vim-airline'

Bundle 'tpope/vim-fugitive'

Bundle 'jistr/vim-nerdtree-tabs'

Bundle 'edkolev/tmuxline.vim'

filetype plugin indent on

" The rest of your config follows here
let g:solarized_termcolors=256
syntax on
"let g:hybrid_use_Xresources = 1
set t_Co=256
set background=dark
colorscheme hybrid
set term=screen-256color


set list
set listchars=tab:▸\ ,eol:¬

"set background=dark

"if has("gui_running")
"  if has("gui_gtk2")
"    set guifont=Source\ Code\ Pro\ Semibold\ 8
"  elseif has("gui_photon")
"    set guifont=Source\ Code\ Pro:s8
"  elseif has("gui_kde")
"    set guifont=Source\ Code\ Pro\ Semibold/8/-1/5/50/0/0/0/1/0
"  elseif has("x11")
"    set guifont=-*-courier-medium-r-normal-*-*-180-*-*-m-*-*
"  else
"    set guifont=Source_Code_Pro_Semibold:h8:cDEFAULT
"  endif
"endif


" Powerline setup
set guifont=Inconsolata\ DejaVu\ Sans\ Mono\ for\ Powerline\ 9
"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
"python del powerline_setup
"set rtp+=$HOME/.local/lib/python2.7/site-packages/powerline/bindings/vim/
set laststatus=2
"set t_Co=256

let g:airline_theme='luna'

let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts=1

" NerdTree shortcut
map <F2> :NERDTreeTabsToggle<CR>
let NERDTreeMapOpenInTab='\r'
let g:nerdtree_tabs_focus_on_files = 1



" Python-mode
" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator modes)
" ]]            Jump on next class or function (normal, visual, operator modes)
" [M            Jump on previous class or method (normal, visual, operator modes)
" ]M            Jump on next class or method (normal, visual, operator modes)
let g:pymode_rope = 1

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_bind = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0
