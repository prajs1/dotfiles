return {
    "nvim-lualine/lualine.nvim",
    config = function()
        require("lualine").setup({
            option = {
                -- theme = "dracula"
                theme = 'tokyonight'
                -- theme = "zenburn"
            }
        })
    end
}
