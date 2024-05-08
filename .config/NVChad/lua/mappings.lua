require "nvchad.mappings"

-------------------------------------------------------------------------------- Global Keymaps Start ----------------------------------------------------------------------------

local map = vim.keymap.set

map("i", "jk", "<ESC>")
map("i", "kj", "<ESC>")
map("n", "L", "$")
map("n", "H", "0")
map("n", "<leader>v", "<cmd>vsplit | lua vim.lsp.buf.definition()<cr>")
-- map("n", "<A-k>", ":bnext<CR>")
-- map("n", "<A-j>", ":bprevious<CR>")

-------------------------------------------------------------------------------- Global Keymaps End ------------------------------------------------------------------------------

-------------------------------------------------------------------------------- Disabled Deafault Keys Start --------------------------------------------------------------------

-- vim.keymap.del("n", "<C-l>")
-- vim.keymap.del("n", "<C-h>")
-- vim.keymap.del("n", "<C-j>")
-- vim.keymap.del("n", "<C-k>")

-------------------------------------------------------------------------------- Disabled Deafault Keys End ----------------------------------------------------------------------

-------------------------------------------------------------------------------- Vim-Tmux-Navigator Start ------------------------------------------------------------------------

map("n", "<C-h>", ":TmuxNavigateLeft<CR>")
map("n", "<C-j>", ":TmuxNavigateDown<CR>")
map("n", "<C-k>", ":TmuxNavigateUp<CR>")
map("n", "<C-l>", ":TmuxNavigateRight<CR>")

-------------------------------------------------------------------------------- Vim-Tmux-Navigator End --------------------------------------------------------------------------

-------------------------------------------------------------------------------- Harpoon Keymaps Start ---------------------------------------------------------------------------

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file)
vim.keymap.set("n", "<leader>o", ui.toggle_quick_menu)



vim.keymap.set("n", "<M-j>", function() ui.nav_file(1) end)
vim.keymap.set("n", "<M-k>", function() ui.nav_file(2) end)
vim.keymap.set("n", "<M-i>", function() ui.nav_file(3) end)


-------------------------------------------------------------------------------- Harpoon Keymaps End -----------------------------------------------------------------------------

-------------------------------------------------------------------------------- CMP Keymaps Start -------------------------------------------------------------------------------

local cmp = require("cmp")
local luasnip = require("luasnip")

require("luasnip.loaders.from_vscode").lazy_load()

cmp.setup({
  completion = { completeopt = "select" },
  mapping = cmp.mapping.preset.insert({
    ['<C-b>'] = cmp.mapping.scroll_docs(-4),
    ['<C-f>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ["<C-j>"] = cmp.mapping(function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      elseif luasnip.locally_jumpable(1) then
        luasnip.jump(1)
      else
        fallback()
      end
    end, { "i", "s" }),
    ["<C-k>"] = cmp.mapping(function(fallback)
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
      require('luasnip').lsp_expand(args.body)
    end,
  },
  sources = cmp.config.sources({
    { name = 'nvim_lsp' },
    { name = 'luasnip' },
  }, {
    { name = 'buffer' },
  }),
  window = {
    completion = cmp.config.window.bordered({
      border = "rounded",
      winhighlight = "Normal:Pmenu,FloatBorder:Pmenu,CursorLine:PmenuSel,Search:None"
    }),
  },
})



-------------------------------------------------------------------------------- CMP Keymaps End ---------------------------------------------------------------------------------

-------------------------------------------------------------------------------- Telescope Configs Start -------------------------------------------------------------------------

local builtin = require('telescope.builtin')
local action_state = require('telescope.actions.state')
local actions = require('telescope.actions')

local buffer_searcher
buffer_searcher = function()
  builtin.buffers {
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
      map('n', 'dd', delete_buf)
      map('n', '<C-k>', delete_multiple_buf)
      map('i', '<C-k>', delete_multiple_buf)
      return true
    end
  }
end

map('n', '<C-i>', builtin.find_files, {})
map('n', '<Tab>', builtin.find_files, {})
map('n', '<C-o>', buffer_searcher, {})
map('n', '<C-p>', builtin.live_grep, {})

-------------------------------------------------------------------------------- Telescope Configs End ----------------------------------------------------------------------------


-------------------------------------------------------------------------------- Copilot Configs Start ----------------------------------------------------------------------------

map('i', '<A-;>', 'copilot#Accept("<CR>")', { expr = true, silent = true, replace_keycodes = false })

-------------------------------------------------------------------------------- Copilot Configs End -------------------------------------------------------------------------------


-------------------------------------------------------------------------------- Rust Configs Start --------------------------------------------------------------------------------

local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = { "<cmd> DapToggleBreakpoint <CR>" },
    ["<leader>dus"] = {
      function()
        local widgets = require('dap.ui.widgets');
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open();
      end,
      "Open debugging sidebar"
    }
  }
}

M.crates = {
  plugin = true,
  n = {
    ["<leader>rcu"] = {
      function()
        require('crates').upgrade_all_crates()
      end,
      "update crates"
    }
  }
}

return M

-------------------------------------------------------------------------------- Rust Configs End --------------------------------------------------------------------------------
