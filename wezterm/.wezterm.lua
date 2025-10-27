-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

--
config.font = wezterm.font("Hack")
config.font_size = 11

-- Tabs
config.enable_tab_bar = false

-- Window decors
-- "border"
config.window_decorations = "RESIZE"

config.initial_rows = 30
config.initial_cols = 120

use_resize_increments = true

config.window_background_opacity = 0.9
--wayland only
--config.kde_window_background_blur = true

config.window_padding = {
	left=2,
	right=2,
	top=2,
	bottom=2,
}

local theme_path = wezterm.home_dir .. '/Documents/custom/wez-theme.json'

local my_colors = wezterm.color.load_terminal_sexy_scheme(theme_path)

-- Assign the table to the config, not the color_scheme string
config.colors = my_colors

return config
