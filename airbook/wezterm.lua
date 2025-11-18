local wezterm = require 'wezterm'

local config = {}

config = {
  -- Core settings
  -- font = wezterm.font('Menlo'),
  font = wezterm.font_with_fallback({
    'FiraCode Nerd Font',  -- $ brew install font-fira-code-nerd-font
    -- 'JetBrains Mono',  -- brain lol
    'Menlo',           -- Always available, very similar to SF Mono
    'Monaco',          -- Additional fallback
    'Apple Color Emoji',
  }),
  font_size = 13.0,

    -- Advanced typography
    harfbuzz_features = { 
      'calt=1',   -- Contextual alternates
      'clig=1',   -- Contextual ligatures  
      'liga=1',   -- Standard ligatures
      'ss01=1',   -- Stylistic set 1 (if available)
    },

  -- Color schemes that work well with macOS dark mode
  color_scheme = "Tokyo Night Moon",  -- or "Catppuccin Mocha", "Gruvbox Dark"


  -- macOS window integration
  window_decorations = "TITLE | RESIZE",  -- Native macOS window controls
  enable_scroll_bar = true,
  adjust_window_size_when_changing_font_size = false,

  -- macOS appearance
  native_macos_fullscreen_mode = true,
  macos_window_background_blur = 25,
  window_background_opacity = 0.92,

  -- Use macOS key bindings as default
  use_ime = true,  -- Better international input support
}

config.keys = {
    {
        key = 'c',
        mods = 'CTRL',
        action = wezterm.action_callback(function(window, pane)
            if pane:is_alt_screen_active() then
                window:perform_action(wezterm.action.SendKey{ key='c', mods='CTRL' }, pane)
            else
                window:perform_action(wezterm.action.SendKey{ key='[', mods='CTRL' }, pane)
            end
        end),
    },
}

config.visual_bell = {
  fade_in_function = 'EaseIn',
  fade_in_duration_ms = 30,
  fade_out_function = 'Constant',
  fade_out_duration_ms = 1,
}

config.colors = {
  visual_bell = '#ff6300',
}

config.audible_bell = "Disabled"

return config
