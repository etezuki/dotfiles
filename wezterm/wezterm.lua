local wezterm = require 'wezterm'
return {
  font = wezterm.font 'JetBrains Mono',
  font_size = 10,
  -- front_end = "WebGpu",
  color_scheme = "Catppuccin Mocha",
  window_decorations = "RESIZE",
  use_fancy_tab_bar = false,
  window_padding = {
	  left = 8,
	  right = 8,
	  top = 8,
	  bottom = 0,
  },
}
