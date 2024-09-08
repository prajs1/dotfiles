-- Declare the apth where Lazy will clone plugin code
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
-- Check if Lazy is cloned if not then clone it
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable branch
    lazypath,
  })
end
-- Add the path to Lazy plugins repositories to the Vim runtime path
vim.opt.rtp:prepend(lazypath)

-- Load options for Vim from config/vim-options.lua
require("config.vim-options")
-- Load keymaps for Vim from config/vim-keymaps.lua
require("config.vim-keymaps")
-- Setup Lazy, this always should be last
-- Tell Lazy that all plugins specs are located in plugins directory
-- We can also specify lazy options by creating and adding local variable called opts and adding it after comma in setup
require("lazy").setup("plugins")
