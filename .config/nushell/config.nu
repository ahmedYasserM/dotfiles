# ~/.config/nushell/config.nu

# ─────────────────────────────────────────────
# Vim mode
# ─────────────────────────────────────────────

$env.config.edit_mode = "vi"


# Remove Nushell's default ":" / ">" prompt indicator
$env.PROMPT_INDICATOR = ""
$env.PROMPT_INDICATOR_VI_INSERT = ""
$env.PROMPT_INDICATOR_VI_NORMAL = ""

# Cursor shape
$env.config.cursor_shape = {
    vi_insert: line
    vi_normal: block
}

$env.config.show_banner = false
$env.PROMPT_COMMAND_RIGHT = ""


# ─────────────────────────────────────────────
# Completion
# ─────────────────────────────────────────────

$env.config.completions = {
    case_sensitive: false
    quick: true
    partial: true
    algorithm: "fuzzy"
    sort: "smart"
}

# ─────────────────────────────────────────────
# Directory icon
# ─────────────────────────────────────────────

def dir-icon [] {
    let dir_name = ($env.PWD | path basename)

    match $dir_name {
        "ahmed"     => ""
        "documents" => ""
        "downloads" => ""
        "pictures"  => ""
        "music"     => ""
        "videos"    => ""
        _           => ""
    }
}


# ─────────────────────────────────────────────
# Prompt
# ─────────────────────────────────────────────

def create-left-prompt [] {
    let current_dir = ($env.PWD | path basename)

    let dir_text = if $env.PWD == $nu.home-dir {
        ""
    } else {
        $" ($current_dir)"
    }

    let current_dir_icon = (dir-icon)

    let arrow_color = if $env.LAST_EXIT_CODE == 0 {
        ansi green
    } else {
        ansi red
    }

    $"(ansi blue)(ansi reset)  (ansi cyan)($current_dir_icon) (ansi reset)(ansi magenta)($dir_text)(ansi reset) ($arrow_color)(ansi reset) "
}

$env.PROMPT_COMMAND = {
    create-left-prompt
}

# ===== Load Config Files =====
source ~/.config/nushell/aliases.nu
source ~/.config/nushell/zoxide.nu
source ~/.config/nushell/abbreviations.nu
source ~/.config/nushell/extra.nu

