-- Map <leader> keybinding to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Remove search highlights after search
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Remove search highlights" })

-- Exit Vim's terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Window navigation
vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the below window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- Window splitting
vim.keymap.set("n", "<leader>wv", ":vsplit<CR>", { desc = "[W]indow split [V]ertical" })
vim.keymap.set("n", "<leader>wh", ":split<CR>", { desc = "[W]indow split [H]orizontal" })
