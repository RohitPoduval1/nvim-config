return {
    {
        "nvim-treesitter/nvim-treesitter-context",
        dependencies = { "nvim-treesitter/nvim-treesitter" }, -- Ensure Treesitter is loaded first
        config = function()
            require("treesitter-context").setup({
                enable = true,                 -- Enable this plugin
                max_lines = 0,                 -- How many lines the context window should span (0 = no limit)
                trim_scope = "outer",          -- Discard outer context if the inner one is available
                patterns = {                   -- Match patterns for filetypes
                    default = {
                        "class",
                        "function",
                        "method",
                    },
                },
                zindex = 20,                   -- Z-index for the context window
                mode = "cursor",               -- Line used to calculate context (cursor or topline)
                separator = nil,               -- Separator between context and content (e.g., `"-"`)
            })
        end,
    },
}
