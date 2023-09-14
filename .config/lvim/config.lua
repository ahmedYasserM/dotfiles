-- lvim.lsp.diagnostics.virtual_text = false


-- toggle statusline
function ToggleStatusLine()
  vim.cmd("if &laststatus == 2 | set laststatus=0 | else | set laststatus=2 | endif")
end

-- Bind the function to a key combination
-- vim.api.nvim_set_keymap('n', '<A-i>', ':lua ToggleStatusLine()<CR>', { noremap = true, silent = true })

lvim.builtin.lualine.style = "lvim"

lvim.colorscheme = "everforest"
lvim.format_on_save = true

lvim.transparent_window = true



-- lvim.builtin.lualine.style = "default"
lvim.keys.insert_mode["jk"] = "<Esc>"
lvim.keys.insert_mode["kj"] = "<Esc>"
lvim.keys.normal_mode["<S-l>"] = ":bnext<CR>"
lvim.keys.normal_mode["<S-h>"] = ":bprevious<CR>"
lvim.keys.normal_mode["<A-a>"] = "ggvG"
lvim.keys.normal_mode["<A-i>"] = ":set laststatus=0<CR>"
lvim.keys.normal_mode["<A-o>"] = ":LspStop<CR>"
lvim.keys.normal_mode["dj"] = '"jdd'
lvim.keys.normal_mode["dk"] = '"kdd'
lvim.keys.normal_mode["'j"] = '"jp'
lvim.keys.normal_mode["'k"] = '"kp'

-- Mapping for Shift + L to move to next tab
-- lvim.keys.normal_mode["<S-l>"] = ":tabnext<CR>"

-- Mapping for Shift + H to move to previous tab
-- lvim.keys.normal_mode["<S-h>"] = ":tabprevious<CR>"

lvim.plugins = {
  {
    "christoomey/vim-tmux-navigator"
  },
  {
    "sainnhe/everforest"
  },
  {
    "simrat39/rust-tools.nvim"
  },
  -- {
  --   "iamcco/markdown-preview.nvim",
  --   build = "cd app; npm install",
  --   init = function() vim.g.mkdp_filetypes = { "markdown" } end,
  --   ft = { "markdown" },
  -- },
  {
    "github/copilot.vim"
  },
  {
    "kana/vim-textobj-user"
  }

}
