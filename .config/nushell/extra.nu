$env.config.keybindings = (
    $env.config.keybindings
    | append {
        name: alt_semicolon_accept_hint
        modifier: alt
        keycode: char_u3b
        mode: [vi_insert]
        event: { send: historyhintcomplete }
    }
)

#====================#

$env.config.keybindings = (
    $env.config.keybindings
    | append [
        {
            name: alt_k_up
            modifier: alt
            keycode: char_k
            mode: [vi_insert]
            event: { send: up }
        }
        {
            name: alt_j_down
            modifier: alt
            keycode: char_j
            mode: [vi_insert]
            event: { send: down }
        }
    ]
)

