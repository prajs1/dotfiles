return {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function()
        require("tokyonight").setup({
            style = "night",
            transparent = true,
            dim_inactive = true,
            styles = {
                functions = { italic = true },
            },
        })

        vim.cmd.colorscheme("tokyonight-night")
    end,
}
