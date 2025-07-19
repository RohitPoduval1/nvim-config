-- return {
-- 	{
-- 		"rebelot/kanagawa.nvim",
-- 		priority = 1000,
-- 		name = "kanagawa",
-- 	},
-- 	{
-- 		"catppuccin/nvim",
-- 		priority = 1000,
-- 		name = "catppuccin",
-- 		opts = {
-- 			-- transparent_background = true,
-- 		},
-- 	},
-- 	{
-- 		"folke/tokyonight.nvim",
-- 		priority = 1000,
-- 		name = "tokyonight",
-- 		opts = {
-- 			-- transparent = true,
-- 			styles = {
-- 				sidebars = "transparent",
-- 				floats = "transparent",
-- 			},
-- 		},
-- 	},
-- }
--
return {
	{
		"rebelot/kanagawa.nvim",
		priority = 1000,
		name = "kanagawa",
		opts = {
			overrides = function(colors)
				return {
					["@keyword"] = { bold = true, fg = colors.theme.syn.keyword },
					["@conditional"] = { bold = true, fg = colors.theme.syn.statement },
					["@repeat"] = { bold = true, fg = colors.theme.syn.statement },
					["@keyword.return"] = { bold = true, fg = colors.theme.syn.statement },
					Keyword = { bold = true, fg = colors.theme.syn.keyword }, -- fallback
				}
			end,
		},
	},

	{
		"catppuccin/nvim",
		priority = 1000,
		name = "catppuccin",
		opts = {
			highlight_overrides = {
				all = function(colors)
					return {
						["@keyword"] = { bold = true, fg = colors.mauve },
						["@conditional"] = { bold = true, fg = colors.red },
						["@repeat"] = { bold = true, fg = colors.red },
						["@keyword.return"] = { bold = true, fg = colors.peach },
						Keyword = { bold = true, fg = colors.mauve }, -- fallback
					}
				end,
			},
		},
	},

	{
		"folke/tokyonight.nvim",
		priority = 1000,
		name = "tokyonight",
		opts = {
			styles = {
				sidebars = "transparent",
				floats = "transparent",
			},
			on_highlights = function(hl, colors)
				hl["@keyword"] = { bold = true, fg = colors.magenta }
				hl["@conditional"] = { bold = true, fg = colors.red }
				hl["@repeat"] = { bold = true, fg = colors.red }
				hl["@keyword.return"] = { bold = true, fg = colors.orange }
				hl["Keyword"] = { bold = true, fg = colors.magenta } -- fallback
			end,
		},
	},
}
