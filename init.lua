require("rohit.core")
require("rohit.lazy")

vim.cmd([[autocmd VimEnter * ++nested lua require('right-mode').apply_theme()]])

vim.opt.tabstop = 4       -- A tab character is 4 spaces
vim.opt.shiftwidth = 4    -- Indentation level is 4 spaces
vim.opt.expandtab = true  -- Use spaces instead of tabs
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4

vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.foldmethod = "indent"
vim.o.foldenable = false

vim.g.python3_host_prog = '/Users/rohitpoduval/Desktop/Programming_Projects/Receipt/receipt_env/bin/python'
