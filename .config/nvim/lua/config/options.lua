-- See kickstart.nvim/init.lua for a good introduction to additional options.

vim.opt.expandtab = true -- convert tabs to spaces
vim.opt.shiftwidth = 2 -- amount to indent using << and <
vim.opt.tabstop = 2 -- number of spaces to show per tab stop
vim.opt.softtabstop = 2 -- number of spaces to insert by pressing tab

vim.opt.smarttab = true
vim.opt.smartindent = true
vim.opt.autoindent = true

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.cursorline = true
vim.opt.undofile = true

vim.opt.mouse = "a"

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Keep this many lines above and below cursor visible when scrolling
vim.opt.scrolloff = 5

-- Disable commandline until needed.
vim.opt.cmdheight = 0
