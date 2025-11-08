-- cat .config/wezterm/wezterm.lua
local wezterm = require 'wezterm'

local config = {}

config = {
  -- Core settings
  -- font = wezterm.font('Menlo'),
  font = wezterm.font_with_fallback({
    'Menlo',           -- Always available, very similar to SF Mono
    'Monaco',          -- Additional fallback
    'Apple Color Emoji',
  }),
  font_size = 14.0,
  line_height = 1.2,

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

return config
