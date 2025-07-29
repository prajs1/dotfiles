return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    'nvimtools/none-ls-extras.nvim',
  },
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        require('none-ls.formatting.ruff').with { extra_args = { '--extend-select', 'I' } },
        require 'none-ls.formatting.ruff_format',
        null_ls.builtins.formatting.stylua,
        -- null_ls.builtins.diagnostics.rubocop,
        -- null_ls.builtins.formatting.rubocop,
        -- null_ls.builtins.diagnostics.eslint-lsp,
        null_ls.builtins.formatting.prettier,
        -- null_ls.builtins.formatting.black,
        -- null_ls.builtins.formatting.isort,
        null_ls.builtins.formatting.shfmt.with { args = { '-i', '4' } },
      },
    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}
