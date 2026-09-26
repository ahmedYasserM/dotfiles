vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Hightlight when yanking text",
  callback = function()
    vim.hl.on_yank()
  end,
})

-- Conform
vim.api.nvim_create_autocmd("BufWritePre", {
  callback = function(args)
    require("conform").format({
      bufnr = args.buf,
      lsp_fallback = true,
      async = false,
      timeout_ms = 2000,
    })
  end,
})

vim.diagnostic.config({
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "󰅚 ",
      [vim.diagnostic.severity.WARN] = "󰀪 ",
      [vim.diagnostic.severity.INFO] = "󰋽 ",
      [vim.diagnostic.severity.HINT] = "󰌶 ",
    },
  },
})



_G.winbar = function()
  local filename = vim.fn.expand("%:t")

  if filename == "" then
    filename = "[No Name]"
  end

  local modified = vim.bo.modified
      and " %#WinBarModified#●"
      or ""

  return "%=%#WinBarFilename#󰈔 " .. filename .. modified
end

vim.o.winbar = "%!v:lua.winbar()"

vim.api.nvim_set_hl(0, "WinBarFilename", {
  fg = "#89B4FA",
  bg = "#0D0F18",
  bold = true,
})

vim.api.nvim_set_hl(0, "WinBarModified", {
  fg = "#F9E2AF",
  bg = "#0D0F18",
})
