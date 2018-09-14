set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" allow backspacing over everything in insert mode
Plugin 'git://github.com/altercation/vim-colors-solarized.git'
" the semantic completion
"Plugin 'Valloric/YouCompleteMe'
"color Schemes bundle
Plugin 'flazz/vim-colorschemes'
"tree explorer
Plugin 'scrooloose/nerdtree'
"syntastic check
"Plugin 'scrooloose/syntastic'
"comment
Plugin 'scrooloose/nerdcommenter'
"Nerdtree plugin
Plugin 'jistr/vim-nerdtree-tabs'
"Python Syntax highlighting
"Plugin 'hdima/python-syntax'
"Tag Bar
Plugin 'majutsushi/tagbar'
"Tag List
"Plugin 'vim-scripts/taglist.vim'
"Highlight Parentheses
Plugin 'kien/rainbow_parentheses.vim'
"surrounding
Plugin 'tpope/vim-surround'
"repeat
Plugin 'tpope/vim-repeat'
"Powerline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

Plugin 'morhetz/gruvbox'
"Plugin 'suan/vim-instant-markdown'
Plugin 'nvie/vim-flake8'
"clang formatter for cpp
Plugin 'rhysd/vim-clang-format'
"Git Glutter
Plugin 'airblade/vim-gitgutter'

call vundle#end()           "required
filetype plugin indent on   "required

filetype on
"filetype indent on
filetype plugin on

set nobackup
set noswapfile



"Enable Syntax
syntax on
syntax enable
"Set Color Schemes
set t_Co=256
let g:solarized_termtrans=1
let g:solarized_termcolors=256
set background=dark
"let g:gruvbox_italic=1
"set termguicolors
colorscheme gruvbox
"缩进配置
"smart indent
"Open Auto Indent
set showmatch
set matchtime=5

set tabstop=2
set expandtab
set autoindent
set smartindent
set backspace=indent,eol,start
set shiftwidth=2
set softtabstop=2
set modeline
autocmd FileType python set tabstop=2|set shiftwidth=2|set expandtab

"Disable Arrows to get used to Vim layout 
"noremap <up> <nop>
"noremap <down> <nop>
"noremap <left> <nop>
"noremap <right> <nop>
inoremap jk <ESC>

set cursorline
set cursorcolumn
set ignorecase smartcase
set history=50		" keep 50 lines of command line history
"enable mouse
set mouse=a
set number
"show the cursor position all the time
set ruler
"display imcomplete commands
set showcmd		 

set noshowmode
set scrolloff=7

set winwidth=79
set incsearch		" do incremental searching
set hlsearch
match Error /\s\+$/
set statusline+=%F

let g:python_recommended_style=0

"Plugin Options
"Rainbow Parentheses
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces


"Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

"Python Syntax
let python_highlight_all = 1
"tagbar
nmap <F8> :TagbarToggle<CR>
"airline
set laststatus=2
let g:airline_powerline_fonts = 1
let g:solarized_base16 = 1

"key binding for clang
map <leader>p :ClangFormat<CR>
