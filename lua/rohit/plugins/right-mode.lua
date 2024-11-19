return {
	"RohitPoduval1/right-mode.nvim",
	config = function()
		require("right-mode").setup({
			light_themes = { "kanagawa-lotus" },
			dark_themes = { "kanagawa-dragon", "kanagawa-wave" },
			day_start = 8, -- Light theme starting from 8 AM
			night_start = 20, -- Dark theme starting from 8 PM
		})
	end,
}
