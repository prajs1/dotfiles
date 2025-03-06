return {
	"mfussenegger/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
    "nvim-neotest/nvim-nio",
    "mfussenegger/nvim-dap-python",
	},
	config = function()
		local dap = require("dap")
    local dapui = require("dapui")

    dapui.setup()

    -- Setup an event listener for when the debugger is launched
		dap.listeners.before.launch.dapui_config = function()
      -- When the debugger is launched open the debug ui
			dapui.open()
		end

		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
  	end

		dap.listeners.before.event_terminated.dapui_config = function()
			-- dapui.close()
		end

		dap.listeners.before.event_exited.dapui_config = function()
			-- dapui.close()
		end

    require('dap-python').setup()

    -- Set a Vim motion to <Space> + d + t to toggle a breakpoint at the line where the cursor is currently on
		vim.keymap.set("n", "<Leader>dt", dap.toggle_breakpoint, { desc = "[D]ebug [T]oggle Breakpoint" })
    -- Set a Vim motion to <Space> + d + s to start the debugger and launch the debugger ui
		vim.keymap.set("n", "<leader>ds", dap.continue, { desc = "[D]ebug [S]tart" })
    -- Set a Vim motion to <Space> + d + c to close debug ui
    vim.keymap.set("n", "<leader>dc", dapui.close, { desc ="[D]ebug [C]lose" })
    -- Set a Vim motion to <Space> + d + n to continue debugging
    vim.keymap.set('n', "<leader>dn", function() require('dap').continue() end)
	end,
}
