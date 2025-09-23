vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'


require("opts")
require("autocmd")
require("lazy-config")

vim.keymap.set('n', '<leader>f', ':Pick files')

vim.hl.on_yank()
