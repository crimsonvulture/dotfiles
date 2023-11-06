local opt = vim.opt

opt.autoindent = true -- automatically indent
opt.cursorline = true -- highlight cursor line
opt.expandtab = true -- replace tabs with spaces
opt.number = true -- show line numbers
opt.shiftwidth = 2 -- width for indent
opt.softtabstop = 2 -- see multiple spaces as tabs 
opt.tabstop = 2 -- spaces for tabs
opt.wrap = false -- line wrapping
opt.clipboard:append("unnamedplus") -- use system clipboard

opt.splitright = true -- vertical split to right
opt.splitbelow = true -- horizontal split to the bottom

opt.swapfile = false -- turn off swapfile

opt.mouse = ""
