return {
  {
    -- "williamboman/mason.nvim",
    "mason-org/mason.nvim",
    -- tag = "v1.11.0",
    -- pin = true,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        -- Install these LSP's automatically
        ensure_installed = { "lua_ls", "ts_ls", "eslint", "angularls", "jdtls", "html", "cssls" },
      })
    end,
  },
  -- JAVA LSP
  {
    -- https://github.com/mfussenegger/nvim-jdtls
    "mfussenegger/nvim-jdtls",
    dependencies = {
      "mfussenegger/nvim-dap",
    },
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
      })

      lspconfig.ts_ls.setup({
        capabilities = capabilities,
      })

      lspconfig.eslint.setup({
        capabilities = capabilities,
      })

      lspconfig.angularls.setup({
        capabilities = capabilities,
      })

      lspconfig.html.setup({
        capabilities = capabilities,
      })

      lspconfig.cssls.setup({
        capabilities = capabilities,
      })

      lspconfig.pylsp.setup({
        settings = {
          pylsp = {
            plugins = {
              pyflakes = { enabled = false },
              pycodestyle = { enabled = false },
              autopep8 = { enabled = false },
              yapf = { enabled = false },
              mccabe = { enabled = false },
              pylsp_mypy = { enabled = false },
              pylsp_black = { enabled = false },
              pylsp_isort = { enabled = false },
            }
          }
        }
      })

      vim.keymap.set("n", "<leader>ch", vim.lsp.buf.hover, { desc = "[C]ode [H]over Documentation" })
      vim.keymap.set("n", "<leader>cd", vim.lsp.buf.definition, { desc = "[C]ode Goto [D]efinition" })
      vim.keymap.set("n", "<leader>ci", vim.lsp.buf.implementation, { desc = "[C]ode Goto [I]mplementation" })
      vim.keymap.set({ "n" }, "<leader>ca", vim.lsp.buf.code_action, { desc = "[C]ode [A]ction" })
      vim.keymap.set("n", "<leader>cr", require("telescope.builtin").lsp_references, { desc = "[C]ode Goto [R]eferences" })
      vim.keymap.set("n", "<leader>cR", vim.lsp.buf.rename, { desc = "[C]ode [R]ename" })
      vim.keymap.set("n", "<leader>cD", vim.lsp.buf.declaration, { desc = "[C]ode Goto [D]eclaration" })
      vim.keymap.set("n", "<leader>ce", vim.diagnostic.open_float, { desc = "[C]ode Open [E]rrors" })
    end,
  },
}
