-- Left column / wrap / scrolloff
vim.opt.number = true -- display line numbers
vim.opt.relativenumber = true -- desplay relative line numbers 
vim.opt.signcolumn  = "yes" -- always show sign column
vim.opt.wrap = true -- enable lines wrapping if exceeds window width
vim.opt.scrolloff = 10 -- Number of columns to keep above/below cursor

-- Tab spacing/behavior
vim.opt.expandtab = true -- convert tabs to spaces
vim.opt.tabstop = 4 -- number of spaces inserted for each tab character 
vim.opt.softtabstop = 4 -- number of spaces inserted for each <Tab> key
vim.opt.shiftwidth = 4 -- number of spaces inserted for every indentation level
vim.opt.smartindent = true -- enable smart indentation
vim.opt.breakindent = true -- enable line breaking indentation

-- General behavior
vim.opt.clipboard = "unnamedplus" -- enable system clipboard access
vim.opt.fileencoding = "utf-8" -- set file encoding to UTF-8
vim.opt.mouse = "a" -- enable mouse support
vim.opt.showmode = false -- hide mode display
vim.opt.termguicolors = true -- enable term GUI colors
vim.opt.timeoutlen = 2000 -- set timeout for mapped sequence [in ms]
vim.opt.undofile = true -- enable persistent undo
vim.opt.updatetime = 100 -- set faster completion [in ms]
vim.opt.cursorline = true -- highlight current line

-- Windows
vim.opt.splitbelow = true -- force horizontal splits below current Window
vim.opt.splitright = true -- forse vertical splits on the right of current window
-- vim.opt.winborder = "rounded" -- set rounded windows borders

-- Searching behaviors
vim.opt.hlsearch = true -- highlight all mathces in search
vim.opt.ignorecase = true -- ignore casesensitive in search
vim.opt.smartcase = true -- match casesensitive if explicitly stated

-- Change cursor behaviour
vim.opt.guicursor = "n-i-v-c-sm:block,ci-ve:ver25,r-cr-o:hor20"
