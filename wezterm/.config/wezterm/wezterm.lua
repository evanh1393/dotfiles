local wezterm = require("wezterm")

local config = {}
if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.color_scheme_dirs = { "~/.config/wezterm/colors" }
config.color_scheme = "Everforest Dark (Medium)"
config.window_decorations = "NONE"
config.enable_tab_bar = false
config.enable_wayland = true

return config
