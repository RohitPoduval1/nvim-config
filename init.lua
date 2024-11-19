require("rohit.core")
require("rohit.lazy")

vim.cmd([[autocmd VimEnter * ++nested lua require('right-mode').apply_theme()]])

vim.opt.tabstop = 4 -- A tab character is 4 spaces
vim.opt.shiftwidth = 4 -- Indentation level is 4 spaces
vim.opt.expandtab = true -- Use spaces instead of tabs
