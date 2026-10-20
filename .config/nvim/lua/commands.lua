vim.api.nvim_create_user_command("PackAdd", function(opts)
  vim.pack.add(opts.fargs)
end, { nargs = "+", desc = "Add plugins (:PackAdd user/repo1 user/repo2)" })

-- Pack Delete and Update cmds are built-in on Nightly 0.13
vim.api.nvim_create_user_command("PackDel", function(opts)
  vim.pack.del(opts.fargs)
end, { nargs = "+", desc = "Delete plugins (:PackDel plugin1 plugin2)" })

vim.api.nvim_create_user_command("PackUpdate", function(opts)
  -- checks if any argument is passed
  if opts.args:match("%S") then
    -- update specific plugins
    local plugins = vim.split(opts.args, "%s+", { trimempty = true })
    -- update only specified plugins
    vim.pack.update(plugins)
  else
    -- update all
    vim.pack.update()
  end
end, { nargs = "*", desc = "Update all plugins or specific ones" })

-- Render Markdown
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "tokyonight*",
  callback = function()
    -- Dynamically extract Tokyonight's built-in red, green, and blue values
    local red = vim.api.nvim_get_hl(0, { name = "DiagnosticError" }) or {}
    local green = vim.api.nvim_get_hl(0, { name = "DiagnosticOk" }) or {}
    local blue = vim.api.nvim_get_hl(0, { name = "DiagnosticInfo" }) or {}
    local dark_bg = vim.api.nvim_get_hl(0, { name = "ColorColumn" }) or {}


    -- Bold, Italic Text -> Green
    vim.api.nvim_set_hl(0, "@markup.strong", { fg = "#7aa2f7", bold = true })
    vim.api.nvim_set_hl(0, "@markup.italic", { fg = "#7aa2f7", italic = true, bold = true })

    -- Inline Code Center -> Blue text with a sleek dark theme capsule background
    vim.api.nvim_set_hl(0, "TokyonightCustomInlineCode", {
      bg = dark_bg.bg or "#1f2335",
      fg = blue.fg or "#7dcfff"
    })
    -- Inline Code Edges -> Seamlessly masks the container background layer
    vim.api.nvim_set_hl(0, "TokyonightCustomInlineCodeEdge", {
      fg = dark_bg.bg or "#1f2335",
      bg = "NONE"
    })
  end
})

-- Force apply the colors to the active editor state immediately
vim.cmd("silent! doautocmd ColorScheme tokyonight")

vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.keymap.set("i", "*", function()
      return "**<Left>"
    end, {
      buffer = true,
      expr = true,
      desc = "Insert Markdown bold markers",
    })
  end,
})
