vim.o.winborder = 'rounded'

vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.smartindent = true

vim.o.termguicolors = true
vim.o.belloff = ""
vim.o.errorbells = true
vim.o.confirm = true -- Some operations that will otherwise produce errors will invoke a popup that will allow you to drop buffer unconditionally
vim.o.findfunc = "fd --type file"
vim.o.icon = true

-- Line wrapping + indent in front so that you could tell lines apart better
vim.o.linebreak = true
vim.o.breakindent = true
vim.o.showbreak = "+++ "

-- disable mouse support
vim.o.mouse = ""

vim.o.number = true
vim.o.relativenumber = true

vim.o.splitright = true
