-------------------------------------------------------------------------------- Options Start ----------------------------------------------------------------------------

lvim.colorscheme = "everforest"
lvim.format_on_save = true
lvim.builtin.treesitter.auto_install = true
lvim.transparent_window = true
lvim.builtin.project.manual_mode = true

-------------------------------------------------------------------------------- Options End ------------------------------------------------------------------------------

-------------------------------------------------------------------------------- Keybindings Start ------------------------------------------------------------------------

-- lvim.builtin.lualine.style = "default"
lvim.keys.insert_mode["jk"] = "<Esc>"
lvim.keys.insert_mode["kj"] = "<Esc>"

-------------------------------------------------------------------------------- Keybindings End --------------------------------------------------------------------------


-------------------------------------------------------------------------------- Telescope Start --------------------------------------------------------------------------

local builtin = require('telescope.builtin')
local action_state = require('telescope.actions.state')
local actions = require('telescope.actions')

lvim.builtin.telescope.defaults.layout_strategy = "horizontal";
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

lvim.keys.normal_mode['<C-i>'] = builtin.find_files
lvim.keys.normal_mode['<C-o>'] = buffer_searcher
lvim.keys.normal_mode['<C-p>'] = builtin.live_grep

-------------------------------------------------------------------------------- Telescope End -----------------------------------------------------------------------------


-------------------------------------------------------------------------------- Copilot Start -----------------------------------------------------------------------------

vim.api.nvim_set_keymap('i', '<A-;>', 'copilot#Accept("<CR>")', { expr = true, silent = true })

-------------------------------------------------------------------------------- Copilot End -------------------------------------------------------------------------------


-------------------------------------------------------------------------------- Plugins Start -----------------------------------------------------------------------------

lvim.plugins = {
  "christoomey/vim-tmux-navigator",
  "sainnhe/everforest",
  "github/copilot.vim"

}

-------------------------------------------------------------------------------- Plugins End -------------------------------------------------------------------------------
