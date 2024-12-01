return {
  "numToStr/Comment.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "JoosepAlviste/nvim-ts-context-commentstring",
  },
  config = function()
    -- import comment plugin safely
    local comment = require("Comment")

    local ts_context_commentstring = require("ts_context_commentstring.integrations.comment_nvim")

    -- enable comment
    comment.setup({
        -- NORMAL mode keymaps
        toggler = {
            ---Line-comment toggle keymap
            line = 'cc',
            ---Block-comment toggle keymap
            block = 'bc',
        },

        -- VISUAL mode keymaps
        opleader = {
            ---Line-comment keymap
            line = 'cc',  -- (c)omment (l)ine
            ---Block-comment keymap
            block = 'cb',  -- (c)omment (b)lock 
        },
    })
  end,
}
