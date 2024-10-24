local wezterm = require("wezterm");
local config = wezterm.config_builder();

config.term = "wezterm"

-- Fonts
config.font = wezterm.font("JetBrains Mono Nerd Font", { weight = "Medium", italic = false })
config.font_size = 12.5


-- Colors
config.color_scheme = "Everblush"
config.color_schemes = {
  ["Everblush"] = {
    background = "#10171A",
    foreground = "#cbddf2",
    cursor_bg = "#6F8EAE",
    cursor_fg = "#6F8EAE",
    ansi = { "#232a2d", "#e57474", "#8ccf7e", "#e5c76b", "#6F8EAE", "#c47fd5", "#6cbfbf", "#b3b9b8" },
    brights = { "#2d3437", "#ef7e7e", "#96d988", "#f4d67a", "#6F8EAE", "#ce89df", "#67cbe7", "#bdc3c2" }
  }
}


-- Keybindings
config.keys = {
  { key = "p",     mods = "SUPER",     action = wezterm.action { PasteFrom = "Clipboard" } },
  { key = "y",     mods = "SUPER",     action = wezterm.action { CopyTo = "Clipboard" } },
  { key = "Enter", mods = "ALT",       action = wezterm.action.DisableDefaultAssignment },
  { key = "Enter", mods = "ALT|SHIFT", action = wezterm.action.ToggleFullScreen },
}

-- Hyperlinks
config.hyperlink_rules = wezterm.default_hyperlink_rules()
table.insert(config.hyperlink_rules, {
  regex = [[["]?([\w\d]{1}[-\w\d]+)(/){1}([-\w\d\.]+)["]?]],
  format = 'https://www.github.com/$1/$3',
})

-- Appearance
config.enable_tab_bar = false
config.window_decorations = "RESIZE"


return config
