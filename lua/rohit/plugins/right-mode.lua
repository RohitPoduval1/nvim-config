return {
	"rohitpoduval1/right-mode.nvim",
	config = function()
		require("right-mode").setup({
			-- light_themes = { "tokyonight", "catppuccin-latte"},
            light_themes = {"catppuccin-latte"},
			-- dark_themes = { "kanagawa-dragon", "tokyonight-storm", "tokyonight-night" },
			dark_themes = { "kanagawa-dragon" },
			day_start = 8, -- Light theme starting from 8 AM
			night_start = 18, -- Dark theme starting from 6 PM
		})
	end,
}
