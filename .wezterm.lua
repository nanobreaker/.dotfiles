local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.colors = {
background = '#0a0c10',
foreground = '#f0f3f6',

cursor_bg = '#f0f3f6',
cursor_border = '#f0f3f6',
cursor_fg = '#0a0c10',

selection_bg = '#204670',
selection_fg = '#f0f3f6',

ansi = {
    '#7a828e',
    '#ff9492',
    '#26cd4d',
    '#f0b72f',
    '#71b7ff',
    '#cb9eff',
    '#39c5cf',
    '#d9dee3',
},
brights = {
    '#9ea7b3',
    '#ffb1af',
    '#4ae168',
    '#f7c843',
    '#91cbff',
    '#dbb7ff',
    '#56d4dd',
    '#ffffff',
},

}

config.font = wezterm.font_with_fallback({
  {
    family="BerkeleyMono Nerd Font Mono Plus Font Awesome Plus Font Awesome Extension Plus Octicons Plus Power Symbols Plus Codicons Plus Pomicons Plus Font Logos Plus Material Design Icons Plus Weather Icons",
    weight="Regular",
    stretch="Normal",
    style="Normal",
  },
  {
    family="Berkeley Mono",
    weight="Regular",
    stretch="Normal",
    style="Normal",
  },
})

config.hide_tab_bar_if_only_one_tab = true
config.window_close_confirmation = 'NeverPrompt'
config.keys = {
  -- This will create a  run your default program inside it
  {
    key = '%',
    mods = 'CTRL|SHIFT|ALT',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
}

return config
