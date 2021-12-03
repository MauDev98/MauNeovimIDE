vim.opt.listchars = {
	space = "⋅",
	eol = "↴",
}

require("indent_blankline").setup({
	show_end_of_line = true,
	space_char_blankline = " ",
})

--Enable (broadcasting) snippet capability for completion

local cmp = require("cmp")
local lspkind = require("lspkind")

local source_mapping = {
	buffer = "[Buffer]",
	nvim_lsp = "[LSP]",
	cmp_tabnine = "[TN]",
	path = "[Path]",
}

local cmp_kinds = {
	Text = "  ",
	Method = "  ",
	Function = "  ",
	Constructor = "  ",
	Field = "  ",
	Variable = "  ",
	Class = "  ",
	Interface = "  ",
	Module = "  ",
	Property = "  ",
	Unit = "  ",
	Value = "  ",
	Enum = "  ",
	Keyword = "  ",
	Snippet = "  ",
	Color = "  ",
	File = "  ",
	Reference = "  ",
	Folder = "  ",
	EnumMember = "  ",
	Constant = "  ",
	Struct = "  ",
	Event = "  ",
	Operator = "  ",
	TypeParameter = "  ",
}

local tabnine = require("cmp_tabnine.config")
tabnine:setup({
	max_lines = 1000,
	max_num_results = 20,
	sort = true,
	run_on_every_keystroke = true,
	snippet_placeholder = "..",
})

cmp.setup({
	snippet = {
		expand = function(args)
			vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
		end,
	},
	mapping = {
		["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-4), { "i", "c" }),
		["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(4), { "i", "c" }),
		["<CR>"] = cmp.mapping.confirm({ select = true }),
		["<M-j>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
		["<M-k>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
	},
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "cmp_tabnine" },
		{
			name = "buffer",
			option = {
				get_bufnrs = function()
					local bufs = {}
					for _, win in ipairs(vim.api.nvim_list_wins()) do
						bufs[vim.api.nvim_win_get_buf(win)] = true
					end
					return vim.tbl_keys(bufs)
				end,
			},
		},
		{ name = "path" },
	}),
	completion = {
		completeopt = "menu,menuone,noinsert,noselect",
	},
	formatting = {
		format = function(entry, vim_item)
			vim_item.kind = (cmp_kinds[vim_item.kind] or "") .. vim_item.kind
			local menu = source_mapping[entry.source.name]
			if entry.source.name == "cmp_tabnine" then
				if entry.completion_item.data ~= nil and entry.completion_item.data.detail ~= nil then
					menu = entry.completion_item.data.detail .. " " .. menu
				end
				vim_item.kind = ""
			end
			return vim_item
		end,
	},
})

local capabilities = require("cmp_nvim_lsp").update_capabilities(vim.lsp.protocol.make_client_capabilities())

require("lspconfig").cssls.setup({
	capabilities = capabilities,
})
require("lspconfig").html.setup({
	capabilities = capabilities,
})
require("lspconfig").tsserver.setup({
	capabilities = capabilities,
})
require("lspconfig").pyright.setup({
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
	rainbow = {
		enable = true,
		-- extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
		-- max_file_lines = nil, -- Do not enable for files with more than n lines, int
		-- colors = {}, -- table of hex strings
	},
	ensure_installed = { "norg" },
})

-- NVIM ICONS
require("nvim-web-devicons").setup({
	-- your personnal icons can go here (to override)
	-- DevIcon will be appended to `name`
	override = {
		zsh = {
			icon = "",
			color = "#428850",
			name = "Zsh",
		},
	},
	-- globally enable default icons (default to false)
	-- will get overriden by `get_icons` option
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
		-- Neogit only provides inline diffs. If you want a more traditional way to look at diffs, you can use `sindrets/diffview.nvim`.
		-- The diffview integration enables the diff popup, which is a wrapper around `sindrets/diffview.nvim`.
		--
		-- Requires you to have `sindrets/diffview.nvim` installed.
		diffview = true,
	},
})

--GITSINGS
require("gitsigns").setup({
	keymaps = {
		-- Default keymap options
		noremap = true,
		["n ]c"] = { expr = true, "&diff ? ']c' : '<cmd>lua require\"gitsigns.actions\".next_hunk()<CR>'" },
		["n [c"] = { expr = true, "&diff ? '[c' : '<cmd>lua require\"gitsigns.actions\".prev_hunk()<CR>'" },
		["n <leader>gs"] = '<cmd>lua require"gitsigns".stage_hunk()<CR>',
		["v <leader>gs"] = '<cmd>lua require"gitsigns".stage_hunk({vim.fn.line("."), vim.fn.line("v")})<CR>',
		["n <leader>gu"] = '<cmd>lua require"gitsigns".undo_stage_hunk()<CR>',
		["n <leader>gr"] = '<cmd>lua require"gitsigns".reset_hunk()<CR>',
		["v <leader>gr"] = '<cmd>lua require"gitsigns".reset_hunk({vim.fn.line("."), vim.fn.line("v")})<CR>',
		["n <leader>gR"] = '<cmd>lua require"gitsigns".reset_buffer()<CR>',
		["n <leader>gp"] = '<cmd>lua require"gitsigns".preview_hunk()<CR>',
		["n <leader>gb"] = '<cmd>lua require"gitsigns".blame_line{full=true}<CR>',
		["n <leader>gS"] = '<cmd>lua require"gitsigns".stage_buffer()<CR>',
		["n <leader>gU"] = '<cmd>lua require"gitsigns".reset_buffer_index()<CR>',
		-- Text objects
		["o ih"] = ':<C-U>lua require"gitsigns.actions".select_hunk()<CR>',
		["x ih"] = ':<C-U>lua require"gitsigns.actions".select_hunk()<CR>',
	},
})

--DIFFVIEW
require("diffview").setup({})
