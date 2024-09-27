return {
  "catppuccin/nvim",
  name = "catppucin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "frappe",
      transparent_background = true,
      no_italic = false,
      no_bold = false,
      no_underline = false,
      styles = {
        comments = { "italic" },
        conditionala = { "italic" },
      },
    })

    vim.cmd.colorscheme "catppuccin"
  end
}
