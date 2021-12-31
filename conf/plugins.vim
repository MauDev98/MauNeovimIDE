call plug#begin('~/.config/nvim/plugged')
"AUTOCOMPLETE AND LSP
Plug 'neovim/nvim-lspconfig'
" Plug 'onsails/lspkind-nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'williamboman/nvim-lsp-installer'
Plug 'tami5/lspsaga.nvim' 
Plug 'vim-denops/denops.vim'
Plug 'ervandew/supertab'
Plug 'ms-jpq/coq_nvim', {'branch': 'coq'}
Plug 'ms-jpq/coq.thirdparty', {'branch': '3p'}
Plug 'ms-jpq/coq.artifacts', {'branch': 'artifacts'}
"TERMINAL
Plug 'kassio/neoterm'
Plug 'voldikss/fzf-floaterm'
Plug 'voldikss/vim-floaterm'
"UTILITIES
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'vimwiki/vimwiki'
Plug 'wellle/targets.vim'
Plug 'easymotion/vim-easymotion'
Plug 'tomtom/tcomment_vim'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug '907th/vim-auto-save'
Plug 'jiangmiao/auto-pairs'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  
Plug 'p00f/nvim-ts-rainbow'
Plug 'liuchengxu/vista.vim'
Plug 'folke/trouble.nvim'
Plug 'folke/which-key.nvim'
"SNIPS
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
"HTML AND CSS PLUGINS
Plug 'mattn/emmet-vim'
Plug 'othree/html5.vim'
Plug 'chrisbra/colorizer'
Plug 'sbdchd/neoformat'
Plug 'alvan/vim-closetag'
Plug 'kabbamine/vcoolor.vim'
Plug 'DougBeney/pickachu'
Plug 'pangloss/vim-javascript'
Plug 'AndrewRadev/tagalong.vim'
"UI PLUGS
Plug 'glepnir/dashboard-nvim'
Plug 'marko-cerovac/material.nvim'
Plug 'nvim-lualine/lualine.nvim'
Plug 'projekt0n/github-nvim-theme'
Plug 'morhetz/gruvbox'
Plug 'rktjmp/lush.nvim'
Plug 'sainnhe/gruvbox-material'
Plug 'arcticicestudio/nord-vim'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'ryanoasis/vim-devicons'
Plug 'fenetikm/falcon'
Plug 'EdenEast/nightfox.nvim'
Plug 'sainnhe/sonokai'
Plug 'tomasr/molokai'
Plug 'sainnhe/everforest'
Plug 'srcery-colors/srcery-vim'
Plug 'nanotech/jellybeans.vim'
Plug 'kwsp/halcyon-neovim'
Plug 'shatur/neovim-ayu'
Plug 'tomasiser/vim-code-dark'
Plug 'bluz71/vim-nightfly-guicolors'
Plug 'mhartington/oceanic-next'
Plug 'catppuccin/nvim'
Plug 'NTBBloodbath/doom-one.nvim'
Plug 'joshdick/onedark.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'NLKNguyen/papercolor-theme'
Plug 'AlessandroYorba/Alduin'
Plug 'cocopon/iceberg.vim'
Plug 'tanvirtin/monokai.nvim'
Plug 'tjdevries/colorbuddy.vim'
Plug 'tjdevries/gruvbuddy.nvim'
Plug 'Th3Whit3Wolf/onebuddy'
Plug 'savq/melange'
"FILETREE AND LINES
Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
Plug 'kyazdani42/nvim-tree.lua'
Plug 'akinsho/bufferline.nvim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/glyph-palette.vim'
" Plug 'lambdalisue/fern.vim'
" Plug 'lambdalisue/fern-renderer-nerdfont.vim'
" Plug 'lambdalisue/fern-hijack.vim'
Plug 'ray-x/guihua.lua', {'do': 'cd lua/fzy && make' }
"GIT PLUGINS
Plug 'nvim-lua/plenary.nvim'
Plug 'TimUntersberger/neogit'
Plug 'lewis6991/gitsigns.nvim'
Plug 'sindrets/diffview.nvim'
Plug 'tpope/vim-fugitive'
call plug#end()

