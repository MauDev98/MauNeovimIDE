set number
set relativenumber
set clipboard=unnamed
filetype plugin on
set nocompatible
set hidden
set breakindent
set linebreak
set smartindent
set termguicolors
"INDENT NECESSARY
set tabstop=4
set softtabstop=4 
set shiftwidth=4 
set expandtab
set splitright
set splitbelow
"COMPLETION SETTINGS
set pumheight=10
set completeopt-=preview
"REDUCE SYNTAX LAG
syntax sync minlines=256
set cursorline
set ttimeoutlen=0
set re=1
set ignorecase
set foldmethod=manual
set noswapfile
set formatoptions-=cro

source ~/.config/nvim/conf/plugins.vim
source ~/.config/nvim/conf/mappings.vim
source ~/.config/nvim/conf/plugsConf.vim
luafile ~/.config/nvim/conf/luaPlugsConf.lua
luafile ~/.config/nvim/conf/which-key.lua

lua require('colorbuddy').colorscheme('onebuddy')
let &fcs='eob: '

