set number
set relativenumber
set clipboard=unnamed
filetype plugin on
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
set nocursorcolumn
set nocursorline
set completeopt=noinsert,noselect
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
luafile ~/.config/nvim/conf/lualine.lua


" Load the colorscheme
colorscheme onedark 
