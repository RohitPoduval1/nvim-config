return {
	"williamboman/mason.nvim",
	dependencies = {
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		-- import mason
		local mason = require("mason")
		
		-- enable mason and configure icons
		mason.setup({
			ui = {
				icons = {
					package_installed = "✓",
					package_pending = "➜",
					package_uninstalled = "✗",
				},
			},
		})
		
		-- Use mason-tool-installer to install LSP servers instead of mason-lspconfig
		-- This avoids the automatic_enable conflict entirely
		
		local mason_tool_installer = require("mason-tool-installer")
		mason_tool_installer.setup({
			ensure_installed = {
				-- LSP servers
				"pyright",   -- Python LSP
				"clangd",    -- C/C++ LSP
				"html-lsp",  -- HTML
				"typescript-language-server",    -- JavaScript/TypeScript


				-- Formatters and linters
				"prettier",
				-- "stylua",    -- Lua formatter
				"isort",     -- Python formatter
				"black",     -- Python formatter
				"pylint",
			},
		})
	end,
}
