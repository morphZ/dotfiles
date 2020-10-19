call plug#begin(stdpath('data') . '/plugged')

Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'dense-analysis/ale'
Plug 'vim-airline/vim-airline'

Plug 'Vimjas/vim-python-pep8-indent'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'christoomey/vim-tmux-navigator'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

Plug 'joshdick/onedark.vim'

call plug#end()

color onedark
