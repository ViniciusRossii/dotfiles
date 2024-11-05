local wezterm = require("wezterm")

config = wezterm.config_builder()

config = {
	automatically_reload_config = true,
	enable_tab_bar = false,
	window_close_confirmation = "NeverPrompt",
	window_decorations = "TITLE | RESIZE",
	color_scheme = "catpuccin-mocha",
	font = wezterm.font("JetBrainsMono Nerd Font"),
	font_size = 12,
  enable_wayland = false,
	background = {
		{
			source = {
				Color = "#282c35",
			},
			width = "100%",
			height = "100%",
			opacity = 0.90,
		},
	},
}

return config
