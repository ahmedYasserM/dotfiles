$env.PROMPT_INDICATOR_VI_INSERT = ""
$env.PROMPT_INDICATOR_VI_NORMAL = ""
$env.config = {

  edit_mode: vi,

  completions: {
    case_sensitive: false # set to true to enable case-sensitive completions
    quick: true  # set this to false to prevent auto-selecting completions when only one remains
    partial: true  # set this to false to prevent partial filling of the prompt
    algorithm: "fuzzy"  # prefix or fuzzy
    external: {
      enable: true # set to false to prevent nushell looking into $env.PATH to find more suggestions, `false` recommended for WSL users as this look up my be very slow
      max_results: 100 # setting it lower can improve completion performance at the cost of omitting some options
      completer: null # check 'carapace_completer' above as an example
    }
  },

  cursor_shape: {
      vi_insert: line
      vi_normal: block
  },
  show_banner: false,

  menus: [
{
      name: abbr_menu
      only_buffer_difference: false
      marker: ""
      type: {
        layout: columnar
        columns: 1
        col_width: 20
        col_padding: 2
      }
      style: {
        text: green
        selected_text: green_reverse
        description_text: yellow
      }
      source: { |buffer, position|
        scope aliases
        | where name == $buffer
        | each { |it| {value: $it.expansion }}
      }
    }
  ]


 keybindings: [
  {
    name: abbr
    modifier: Alt
    keycode: space
    mode: [emacs, vi_normal, vi_insert]
    event: [
    { send: menu name: abbr_menu }
    { edit: insertchar, value: ' '}
    ]
  },
 {
    name: autoparen
    modifier: none
    keycode: 'char_('
    mode: [emacs vi_normal vi_insert]
    event: [
        { edit: InsertChar value: "(" }
        { edit: InsertChar value: ")" }
        { edit: MoveLeft }
    ]
  },

 {
    name: autoparen
    modifier: none
    keycode: 'char_['
    mode: [emacs vi_normal vi_insert]
    event: [
        { edit: InsertChar value: "[" }
        { edit: InsertChar value: "]" }
        { edit: MoveLeft }
    ]
 },

 {
    name: autoparen
    modifier: none
    keycode: 'char_{'
    mode: [emacs vi_normal vi_insert]
    event: [
        { edit: InsertChar value: "{" }
        { edit: InsertChar value: "}" }
        { edit: MoveLeft }
    ]
  },
{
  name: autoparen
  modifier: none
  keycode: 'char_`'
  mode: [emacs vi_normal vi_insert]
  event: [
      { edit: InsertChar value: "`" }
      { edit: InsertChar value: "`" }
      { edit: MoveLeft }
  ]
},
{
  name: autoparen
  modifier: none
  keycode: "char_\'"
  mode: [emacs vi_normal vi_insert]
  event: [
      { edit: InsertChar value: "'" }
      { edit: InsertChar value: "'" }
      { edit: MoveLeft }

    ]
},
{
  name: autoparen
  modifier: none
  keycode: "char_\""
  mode: [emacs vi_normal vi_insert]
  event: [
      { edit: InsertChar value: "\"" }
      { edit: InsertChar value: "\"" }
      { edit: MoveLeft }
    ]
  }
]
}
$env.PATH = ($env.PATH | split row (char esep) | append '/home/ahmed/.bun/bin')

# aliases
source aliases.nu

# zoxide
source .zoxide.nu

# pueue
use task.nu

# starship
use ~/.cache/starship/init.nu
