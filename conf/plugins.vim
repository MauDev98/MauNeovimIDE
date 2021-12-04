call plug#begin('~/.config/nvim/plugged')
"AUTOCOMPLETE AND LSP
Plug 'neovim/nvim-lspconfig'
Plug 'folke/trouble.nvim'
Plug 'onsails/lspkind-nvim'
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/nvim-cmp'
Plug 'tzachar/cmp-tabnine', { 'do': './install.sh' }
Plug 'NTBBloodbath/doom-one.nvim'
"TERMINAL
Plug 'kassio/neoterm'
Plug 'voldikss/fzf-floaterm'
Plug 'voldikss/vim-floaterm'
"UTILITIES
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'mbbill/undotree'
Plug 'airblade/vim-rooter'
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
Plug 'Iron-E/nvim-highlite'
Plug 'hoob3rt/lualine.nvim'
Plug 'rktjmp/lush.nvim'
Plug 'projekt0n/github-nvim-theme'
Plug 'ellisonleao/gruvbox.nvim'
Plug 'sainnhe/gruvbox-material'
Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'ryanoasis/vim-devicons'
Plug 'fenetikm/falcon'
Plug 'EdenEast/nightfox.nvim'
Plug 'sainnhe/sonokai'
Plug 'arcticicestudio/nord-vim'
Plug 'navarasu/onedark.nvim'
Plug 'kwsp/halcyon-neovim'
Plug 'shatur/neovim-ayu'
Plug 'tomasiser/vim-code-dark'
Plug 'mhartington/oceanic-next'
"FILETREE AND LINES
Plug 'lambdalisue/fern.vim'
Plug 'savq/melange'
Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
Plug 'akinsho/bufferline.nvim'
Plug 'lambdalisue/nerdfont.vim'
Plug 'lambdalisue/glyph-palette.vim'
Plug 'lambdalisue/fern-renderer-nerdfont.vim'
Plug 'lambdalisue/fern-hijack.vim'
"GIT PLUGINS
Plug 'nvim-lua/plenary.nvim'
Plug 'TimUntersberger/neogit'
Plug 'lewis6991/gitsigns.nvim'
Plug 'sindrets/diffview.nvim'
Plug 'tpope/vim-fugitive'
call plug#end()

