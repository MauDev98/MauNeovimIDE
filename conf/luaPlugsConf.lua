vim.opt.listchars = {
	space = "⋅",
	eol = "↴",
}

require("indent_blankline").setup({
	show_end_of_line = true,
	space_char_blankline = " ",
})

--Enable (broadcasting) snippet capability for completion
local nvim_lsp = require("lspconfig")
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true
local coq = require("coq")

nvim_lsp.cssls.setup({
	coq.lsp_ensure_capabilities(),
	capabilities = capabilities,
})
nvim_lsp.html.setup({
	coq.lsp_ensure_capabilities(),
	capabilities = capabilities,
})
nvim_lsp.tsserver.setup({
	coq.lsp_ensure_capabilities(),
	capabilities = capabilities,
})
nvim_lsp.pyright.setup({
	coq.lsp_ensure_capabilities(),
	capabilities = capabilities,
})

-- TREESITTER NORG
local parser_configs = require("nvim-treesitter.parsers").get_parser_configs()

parser_configs.norg = {
	install_info = {
		url = "https://github.com/nvim-neorg/tree-sitter-norg",
		files = { "src/parser.c", "src/scanner.cc" },
		branch = "main",
	},
}
-- NEOVIM TREESITTER
require("nvim-treesitter.configs").setup({
	highlight = {
		enable = true,
		disable = { "html" },
	},
	incremental_selection = {
		enable = true,
	},
	rainbow = {

		enable = true,
		-- disable = { "html" },
		extended_mode = false,
		colors = {
			"#cc241d",
			"#EED8B9",
			"#b16286",
			"#d79921",
			"#689d6a",
			"#d65d0e",
			"#458588",
		},
	},
	ensure_installed = { "norg" },
	indent = {
		enable = true,
	},
})

-- NVIM ICONS
require("nvim-web-devicons").setup({
	override = {
		zsh = {
			icon = "",
			color = "#428850",
			name = "Zsh",
		},
	},
	default = true,
})

-- NVIM BUFFERLINE
require("bufferline").setup({
	options = {
		separator_style = "thick",
		diagnostics = "nvim_lsp",
	},
})

-- LSP DIAGNOSTICS
require("trouble").setup({})

--PLENARY
local async = require("plenary.async")

--NEOGIT

local neogit = require("neogit")
neogit.setup({
	integrations = {
		diffview = true,
	},
})

--GITSINGS
require("gitsigns").setup({
	keymaps = {
		noremap = false,
	},
})

--DIFFVIEW
require("diffview").setup({})

--LSPSAGA
local lspsaga = require("lspsaga")
lspsaga.setup({ -- defaults ...
	debug = false,
	use_saga_diagnostic_sign = true,
	-- diagnostic sign
	error_sign = "",
	warn_sign = "",
	hint_sign = "",
	infor_sign = "",
	diagnostic_header_icon = "   ",
	-- code action title icon
	code_action_icon = " ",
	code_action_prompt = {
		enable = true,
		sign = true,
		sign_priority = 40,
		virtual_text = true,
	},
	finder_definition_icon = "  ",
	finder_reference_icon = "  ",
	max_preview_lines = 10,
	finder_action_keys = {
		open = "o",
		vsplit = "s",
		split = "i",
		quit = "q",
		scroll_down = "<C-f>",
		scroll_up = "<C-b>",
	},
	code_action_keys = {
		quit = "q",
		exec = "<CR>",
	},
	rename_action_keys = {
		quit = "<C-c>",
		exec = "<CR>",
	},
	definition_preview_icon = "  ",
	border_style = "single",
	rename_prompt_prefix = "➤",
	server_filetype_map = {},
	diagnostic_prefix_format = "%d. ",
})

require("lualine").setup({
	options = {
		icons_enabled = true,
		theme = "auto",
		component_separators = { left = "", right = "" },
		section_separators = { left = "", right = "" },
		disabled_filetypes = {},
		always_divide_middle = true,
	},
	sections = {
		lualine_a = { "mode" },
		lualine_b = { "branch", "diff", "diagnostics" },
		lualine_c = { "filename" },
		lualine_x = { "encoding", "fileformat", "filetype" },
		lualine_y = { "progress" },
		lualine_z = { "location" },
	},
	inactive_sections = {
		lualine_a = {},
		lualine_b = {},
		lualine_c = { "filename" },
		lualine_x = { "location" },
		lualine_y = {},
		lualine_z = {},
	},
	tabline = {},
	extensions = {},
})
