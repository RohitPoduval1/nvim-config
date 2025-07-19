require("rohit.core")
require("rohit.lazy")

vim.cmd([[autocmd VimEnter * ++nested lua require('right-mode').apply_theme()]])

vim.opt.tabstop = 4         -- Still needed, for how <Tab> renders visually
vim.opt.shiftwidth = 4      -- Auto-indent width
vim.opt.softtabstop = 4     -- Makes backspace remove 4 spaces at a time
vim.opt.expandtab = true    -- Use spaces, not tabs

vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.foldmethod = "indent"
vim.o.foldenable = false
