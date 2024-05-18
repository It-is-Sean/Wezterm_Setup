local wezterm = require("wezterm")
if wezterm.config_builder then
	config = wezterm.config_builder()
end
local config = {
	font_size = 20,
	font = wezterm.font("CaskaydiaMono Nerd Font Mono"),
	use_fancy_tab_bar = false,
	window_decorations = "RESIZE",
	color_scheme = "Tokyo Night",
	window_background_opacity = 0.8,
	text_background_opacity = 0.9,
	adjust_window_size_when_changing_font_size = false,
	default_domain = "WSL:Arch",
	wsl_domains = {
		{
			-- The name of this specific domain.  Must be unique amonst all types
			-- of domain in the configuration file.
			name = "WSL:Arch",

			-- The name of the distribution.  This identifies the WSL distribution.
			-- It must match a valid distribution from your `wsl -l -v` output in
			-- order for the domain to be useful.
			distribution = "Arch",
		},
	},
}

return config
