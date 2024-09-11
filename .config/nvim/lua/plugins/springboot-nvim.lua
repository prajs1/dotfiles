return {
	"elmcgill/springboot-nvim",
	depedencies = {
		"neovim/nvim-lspconfig",
		"mfussenegger/nvim-jdtls",
	},
	config = function()
		local springboot_nvim = require("springboot-nvim")
    
    -- Set a Vim motion to <Space> + <Shift>J + r to run the spring boot project in a Vim terminal
    vim.keymap.set("n", "<leader>Jr", springboot_nvim.boot_run, { desc = "[J]ava [R]un Spring Boot" })
    -- Set a Vim motion to <Space> + <Shift>J + c to open the generate class ui 
    vim.keymap.set("n", "<leader>Jc", springboot_nvim.generate_class, { desc = "[J]ava Create [C]lass" })
    -- Set a Vim motion to <Space> + <Shift>J + i to open the generate interface ui
    vim.keymap.set("n", "<leader>Ji", springboot_nvim.generate_interface, { desc = "[J]ava Create [I]nterface" })
    -- Set a Vim motion to <Space> + <Shift>J + e to open the generate enum ui
    vim.keymap.set("n", "<leader>Je", springboot_nvim.generate_enum, { desc = "[J]ava Create [E]num" })

		springboot_nvim.setup({})
	end,
}
