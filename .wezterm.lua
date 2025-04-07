-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

--Fonts

config.font = wezterm.font("ShureTechMono Nerd Font")
config.font_size = 12
-- config.harfbuzz_features = {
-- 	"calt=1", -- Contextual Alternates
-- 	"clig=1", -- Contextual Ligatures
-- 	"liga=1", -- Standard Ligatures
-- }

--Windows
config.window_background_image = "/home/prettyletto/Documents/Themes/wallpaperflare.com_wallpaper.jpg"
config.window_background_image_hsb = {
	brightness = 0.2,
}
config.enable_tab_bar = false
config.window_decorations = "TITLE | RESIZE"
config.window_background_opacity = 1

-- Themes
config.color_scheme = "Kanagawa Dragon (Gogh)"
config.text_background_opacity = 1

--Keybindings
config.keys = {
	{
		key = "n",
		mods = "SUPER|SHIFT",
		action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	{
		key = "m",
		mods = "SUPER|SHIFT",
		action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},

	{
		key = "w",
		mods = "SUPER|SHIFT",
		action = wezterm.action.CloseCurrentPane({ confirm = true }),
	},
}

return config
