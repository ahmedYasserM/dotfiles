local blink = require("blink.cmp")
return {
  cmd = { "mojo-lsp-server" },
  filetypes = { "mojo" },
  root_markers = { "pixi.toml", "pixi.lock" },
  single_file_support = true,
  handlers = {
    ["$/progress"] = function(_, _, _)
      -- Disable noisy progress updates
    end,
  },
}
