return {
  require('hlchunk').setup({
    chunk = {
      enable = true,
      chars = {
        horizontal_line = "─",
        vertical_line = "│",
        left_top = "┌",
        left_bottom = "└",
        right_arrow = "─",
      },
      style = "#6F8EAE",
      error_sign = true,
      duration = 70,
    },

  })
}
