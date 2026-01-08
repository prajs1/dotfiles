return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			filesystem = {
				filtered_items = {
					-- Show hidden files
					visible = true,
					hide_dotfiles = false,
					hide_gitignored = false,
				},
			},
			event_handlers = {
				{
					event = "file_open_requested",
					handler = function()
						-- vim.cmd("Neotree close")
						require("neo-tree.command").execute({ action = "close" })
					end,
				},
			},
		})
		vim.keymap.set("n", "<leader>n", ":Neotree filesystem reveal float<CR>", {})
		vim.keymap.set("n", "<leader>gs", ":Neotree float git_status<CR>", {})
	end,
}
