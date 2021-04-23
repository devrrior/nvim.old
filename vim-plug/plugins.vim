" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Themes
    Plug 'morhetz/gruvbox'
    Plug 'crusoexia/vim-monokai'
    Plug 'andreasvc/vim-256noir'
    Plug 'chriskempson/base16-vim'
    Plug 'jacoborus/tender.vim'
    Plug 'NLKNguyen/papercolor-theme'
    Plug 'joshdick/onedark.vim'
    Plug 'arcticicestudio/nord-vim'
    Plug 'tomasiser/vim-code-dark'
    " Stable version of coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    " Keeping up to date with master
    Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
    " Python
    Plug 'vim-scripts/indentpython.vim'
    " Airline
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " Ranger
    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}

    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'
    " Commentary
    Plug 'tpope/vim-commentary'
    "Startify
    Plug 'mhinz/vim-startify'
    " Cool Icons
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'ryanoasis/vim-devicons'
    " Git
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'
    " Quickscope
    Plug 'unblevable/quick-scope'
    " Sneak
    " Plug 'justinmk/vim-sneak'
    " Floaterm
    Plug 'voldikss/vim-floaterm'
    " Snippets with CoC
    Plug 'honza/vim-snippets'
    " Replace w/ FAR
    Plug 'ChristianChiarulli/far.vim'
    " Better Whitespace
    " Plug 'ntpeters/vim-better-whitespace'
    " Smooth scroll
    Plug 'psliwka/vim-smoothie'
    " Fix to use venv with python
    Plug 'sansyrox/vim-python-virtualenv'
    " Improve the syntax of python
    Plug 'vim-python/python-syntax'
    " autopep8 - Format code
    Plug 'nvie/vim-flake8'

call plug#end()

autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
