lvim.builtin.bufferline.active = false
lvim.format_on_save = true
lvim.builtin.treesitter.auto_install = true
lvim.transparent_window = true
lvim.builtin.project.manual_mode = true
lvim.builtin.nvimtree.side = "right"
vim.opt.cursorline = false

-------------------------------------------------------------------------------- CMP Start ---------------------------------------------------------------------------------

local cmp = require("cmp")
local luasnip = require("luasnip")

require("luasnip.loaders.from_vscode").lazy_load()

cmp.setup({
	completion = { completeopt = "select" },
	mapping = cmp.mapping.preset.insert({
		["<C-b>"] = cmp.mapping.scroll_docs(-4),
		["<C-f>"] = cmp.mapping.scroll_docs(4),
		["<C-Space>"] = cmp.mapping.complete(),
		["<C-e>"] = cmp.mapping.abort(),
		["<CR>"] = cmp.mapping.confirm({ select = true }),
		["<M-j>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif luasnip.locally_jumpable(1) then
				luasnip.jump(1)
			else
				fallback()
			end
		end, { "i", "s" }),
		["<M-k>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			elseif luasnip.locally_jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, { "i", "s" }),
	}),
	snippet = {
		expand = function(args)
			require("luasnip").lsp_expand(args.body)
		end,
	},
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
	}, {
		{ name = "buffer" },
	}),
	window = {
		completion = cmp.config.window.bordered({
			border = "rounded",
			winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,CursorLine:PmenuSel,Search:None",
		}),
	},
})

-------------------------------------------------------------------------------- CMP End -----------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------- Telescope Start ------------------------------------------------------------------------------------------

local builtin = require("telescope.builtin")
local action_state = require("telescope.actions.state")
local actions = require("telescope.actions")

lvim.builtin.telescope.defaults.layout_strategy = "horizontal"
lvim.builtin.telescope.defaults.file_ignore_patterns = { "node_modules/", "target/" }
lvim.builtin.telescope.defaults.layout_config = {
	width = 0.8,
	height = 0.8,
	prompt_position = "top",
	preview_cutoff = 120,
	horizontal = {
		preview_width = 0.6,
		results_width = 0.8,
	},
	vertical = {
		width = 0.9,
		height = 0.9,
		preview_height = 0.5,
	},
}

local buffer_searcher
buffer_searcher = function()
	builtin.buffers({
		sort_mru = true,
		show_all_buffers = false,
		attach_mappings = function(prompt_bufnr, map)
			local refresh_buffer_searcher = function()
				actions.close(prompt_bufnr)
				vim.schedule(buffer_searcher)
			end
			local delete_buf = function()
				local selection = action_state.get_selected_entry()
				vim.api.nvim_buf_delete(selection.bufnr, { force = true })
				refresh_buffer_searcher()
			end
			local delete_multiple_buf = function()
				local picker = action_state.get_current_picker(prompt_bufnr)
				local selection = picker:get_multi_selection()
				for _, entry in ipairs(selection) do
					vim.api.nvim_buf_delete(entry.bufnr, { force = true })
				end
				refresh_buffer_searcher()
			end
			map("n", "dd", delete_buf)
			map("n", "<C-k>", delete_multiple_buf)
			map("i", "<C-k>", delete_multiple_buf)
			return true
		end,
	})
end

lvim.keys.normal_mode["<M-i>"] = builtin.find_files
lvim.keys.normal_mode["<M-o>"] = buffer_searcher
lvim.keys.normal_mode["<M-u>"] = builtin.live_grep

-------------------------------------------------------------------------------------------------- Telescope End ------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------- Copilot Start -----------------------------------------------------------------------------

vim.api.nvim_set_keymap("i", "<A-;>", 'copilot#Accept("<CR>")', { expr = true, silent = true })

-------------------------------------------------------------------------------- Copilot End -------------------------------------------------------------------------------

-------------------------------------------------------------------------------- Keybindings Start -----------------------------------------------------------------------------

lvim.keys.normal_mode["<M-h>"] = "<C-w>h"
lvim.keys.normal_mode["<M-j>"] = "<C-w>j"
lvim.keys.normal_mode["<M-k>"] = "<C-w>k"
lvim.keys.normal_mode["<M-l>"] = "<C-w>l"
lvim.keys.normal_mode["L"] = "$"
lvim.keys.normal_mode["H"] = "0"
lvim.keys.normal_mode["<M-,>"] = ":DB<CR>"
lvim.keys.normal_mode["<leader>d"] = ":DBUI<CR>"
lvim.keys.normal_mode["<M-p>"] = ":lua require('telescope').extensions.projects.projects{}<CR>"
-------------------------------------------------------------------------------- Keybindings End -------------------------------------------------------------------------------

-------------------------------------------------------------------------------- Plugins Start ---------------------------------------------------------------------------------

lvim.plugins = {
	{
		"github/copilot.vim",
		lazy = false,
	},
	{
		"NvChad/nvim-colorizer.lua",
		opts = {
			filetypes = { "*" },
			user_default_options = {
				RGB = true,
				RRGGBB = true,
				names = true,
				RRGGBBAA = false,
				AARRGGBB = false,
				rgb_fn = true,
				hsl_fn = false,
				css = false,
				css_fn = false,
				mode = "background",
				tailwind = true,
				sass = { enable = false, parsers = { "css" } },
				virtualtext = "■",
				always_update = false,
			},
			buftypes = {},
		},
	},

	{
		"razak17/tailwind-fold.nvim",
		opts = {
			symbol = "󱏿󱏿󱏿", --
		},
		dependencies = { "nvim-treesitter/nvim-treesitter" },
		ft = { "html", "svelte", "astro", "vue", "typescriptreact", "php", "blade" },
	},
	{
		"kristijanhusak/vim-dadbod-ui",
		dependencies = {
			{ "tpope/vim-dadbod", lazy = true },
			{ "kristijanhusak/vim-dadbod-completion", ft = { "sql", "mysql", "plsql" }, lazy = true }, -- Optional
		},
		cmd = {
			"DBUI",
			"DBUIToggle",
			"DBUIAddConnection",
			"DBUIFindBuffer",
		},
		init = function()
			-- Your DBUI configuration
			vim.g.db_ui_use_nerd_fonts = 1
		end,
	},

	{
		"ahmedkhalf/project.nvim",
		config = function()
			require("project_nvim").setup({
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
				silent_chdir = false,
				-- lua
				require("nvim-tree").setup({
					view = {
						side = "right",
					},
					sync_root_with_cwd = true,
					respect_buf_cwd = true,
					update_focused_file = {
						enable = true,
						update_root = true,
					},
				}),
			})
		end,
	},

	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {
			messages = {
				enabled = false,
			},
			cmdline = {
				enabled = true,
			},
			notify = {
				enabled = false,
			},
		},
		dependencies = {
			"MunifTanjim/nui.nvim",
		},
	},
}

-------------------------------------------------------------------------------- Plugins End -----------------------------------------------------------------------------------
