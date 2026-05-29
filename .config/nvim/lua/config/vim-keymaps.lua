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

-- Tabs
vim.keymap.set("n", "<leader>tc", ":tabnew<CR>", { desc = "[T]ab [C]reate" })
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>", { desc = "[T]ab e[X]terminate :D os just close" })
vim.keymap.set("n", "<leader>tn", ":tabnext +<CR>", { desc = "[T]ab [N]ext" })
vim.keymap.set("n", "<leader>tp", ":tabnext -<CR>", { desc = "[T]ab [P]revious" })

-- Buffers
vim.keymap.set("n", "<leader>bb", ":buffers<CR>", { desc = "List [B]uffers" })
vim.keymap.set("n", "<leader>bd", ":bdelete<CR>", { desc = "[B]uffer [D]elete" })
vim.keymap.set("n", "<leader>bn", ":bNext<CR>", { desc = "[B]uffer [N]ext" })
vim.keymap.set("n", "<leader>bp", ":bprevious<CR>", { desc = "[B]uffer [P]revious" })

-- Session
vim.keymap.set("n", "<leader>ss", ":mksession<CR>", { desc = "[S]ave [S]ession" })
vim.keymap.set("n", "<leader>sq", ":mksession<CR>:qa<CR>", { desc = "[S]ave [S]ession and [Q]uit [A]ll" })
vim.keymap.set("n", "<leader>sq", ":mksession<CR>:wqa<CR>", { desc = "[S]ave [S]ession and [W]rite [Q]uit [A]ll" })
vim.keymap.set("n", "<leader>sos", ":mksession!<CR>", { desc = "[S]ave [S]ession" })
vim.keymap.set("n", "<leader>soq", ":mksession!<CR>:qa<CR>", { desc = "[S]ave [S]ession and [Q]uit [A]ll" })
vim.keymap.set("n", "<leader>soq", ":mksession!<CR>:wqa<CR>", { desc = "[S]ave [S]ession and [W]rite [Q]uit [A]ll" })

-- Themes
vim.keymap.set("n", "<leader>tt", require("config.transparency").toggle, {
    desc = "[T]oggle [T]ransparency",
})
vim.keymap.set("n","<leader>tT", ":Themery<CR>", { desc = "[T]oggle [T]hemery"})
