vim.g.mapleader = " "

-- replaces selected text without losing what you yanked
vim.keymap.set("x", "p", [["_dP]], { desc = "Paste over selection without losing yanked text" })

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete without yanking" })

vim.keymap.set("n", "<Esc>", ":nohl<CR>", { desc = "Clear search highlighting", silent = true })

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "moves lines down in visual selection" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "moves lines up in visual selection" })

vim.keymap.set("v", "<", "<gv", { desc = "Unindent and keep selection" })
vim.keymap.set("v", ">", ">gv", { desc = "Indent and keep selection" })

vim.keymap.set("n", "J", "mzJ`z", { desc = "Join lines without moving cursor" })

vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "move down in buffer with cursor centered" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "move up in buffer with cursor centered" })

vim.keymap.set("n", "n", "nzzzv", { desc = "Next search result cursor centered" })
vim.keymap.set("n", "N", "Nzzzv", { desc = "Previous search result cursor centered" })

vim.keymap.set({ 'n', 'v', 'o' }, 'H', 'h_', { desc = 'Go to first character of line' })
vim.keymap.set({ 'n', 'v', 'o' }, 'L', 'g_', { desc = 'Go to end of line' })

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
  { desc = "Replace word cursor is on globally" })
vim.keymap.set("n", "<leader>X", "<cmd>!chmod +x %<CR>", { silent = true, desc = "makes file executable" })

vim.keymap.set("n", "<leader>re", "<cmd>restart<cr>", { desc = "Restart config :restart)" })

vim.keymap.set("n", "<CR>", "ciw", { desc = "Change current word", })

-- native undotree
vim.keymap.set("n", "<leader>u", function()
  vim.cmd.packadd("nvim.undotree")
  require("undotree").open()
end, { desc = "Toggle Builtin Undotree" })



-- Common Telescope Keymaps
vim.keymap.set('n', '<leader>f', '<cmd>Telescope find_files<cr>', { desc = 'Find Files' })
vim.keymap.set('n', '<leader>s', '<cmd>Telescope live_grep<cr>', { desc = 'Live Grep' })
vim.keymap.set('n', '<leader>b', '<cmd>Telescope buffers<cr>', { desc = 'Buffers' })
vim.keymap.set('n', '<leader>vh', '<cmd>Telescope help_tags<cr>', { desc = 'Help Tags' })

-- Yazi
vim.keymap.set('n', '-', '<cmd>Yazi<cr>', { desc = 'Help Tags' })

-- Conform
vim.keymap.set({ "n", "v" }, "<leader>lf", function()
  require("conform").format({
    lsp_fallback = true,
    async = false,
    timeout_ms = 2000,
  })
end, { desc = "Format" })

-- LSP Hover and Error Diagnostic
vim.keymap.set("n", "K", function()
  local diagnostics = vim.diagnostic.get(0, {
    lnum = vim.fn.line(".") - 1,
  })

  if #diagnostics > 0 then
    vim.diagnostic.open_float({
      scope = "cursor",
      border = "rounded",
      focus = false,
    })
  else
    vim.lsp.buf.hover()
  end
end, { desc = "Diagnostic / Hover" })
