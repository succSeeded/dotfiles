require "nvchad.options"

-- add yours here!

local o = vim.o
local g = vim.g

g.tex_flavor = "latex"
g.vimtex_view_method = "zathura"
g.vimtex_quickfix_mode = 0

o.tabstop = 2 -- A TAB character looks like 2 spaces
o.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
o.softtabstop = 2 -- Number of spaces inserted instead of a TAB character
o.shiftwidth = 2 -- Number of spaces inserted when indenting

-- o.cursorlineopt ='both' -- to enable cursorline!
