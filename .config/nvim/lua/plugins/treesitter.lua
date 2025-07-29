return {
    {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = {"lua","javascript","typescript","java","python","css","scss","html","php","markdown","markdown_inline", "json", "bash", "diff", "xml"},
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
},
    {
        "nvim-treesitter/nvim-treesitter-context",
        config = function ()
            local config = require("treesitter-context")
            config.setup()
        end
    }
}
