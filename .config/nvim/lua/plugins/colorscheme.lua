return {
    {
        "zaldih/themery.nvim",
        lazy = false,
        config = function()
            require("themery").setup({
                themes = {
                    "gruvbox",
                    "catppuccin",
                    "onedark",
                    "tokyonight-night",
                    "rose-pine",
                    "rose-pine-dawn",
                    "rose-pine-moon",
                    "rose-pine-main",
                    "zenburn" },    -- Your list of installed colorschemes.
                livePreview = true, -- Apply theme while picking. Default to true.
            })
        end
    },
    {
        "folke/tokyonight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
        config = function()
            require("tokyonight").setup({
                style = "night",
                transparent = false,
                dim_inactive = true,
                styles = {
                    functions = { italic = true },
                },
            })

            -- vim.cmd.colorscheme("tokyonight-night")
        end,
    },
    {
        "catppuccin/nvim",
        name = "catppucin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                flavour = "mocha",
                transparent_background = false,
                no_italic = false,
                no_bold = false,
                no_underline = false,
                styles = {
                    comments = { "italic" },
                    conditionals = { "italic" },
                    loops = { "italic" },
                    functions = { "italic" },
                },
                integrations = {
                    treesitter = true,
                    notify = true,
                },
            })

            -- vim.cmd.colorscheme("catppuccin")
        end,
    },
    {
        "olimorris/onedarkpro.nvim",
        priority = 1000,
        config = function()
            require("onedarkpro").setup({
                highlights = {
                    Comment = { italic = true },
                    Directory = { bold = true },
                    ErrorMsg = { italic = true, bold = true },
                },
                styles = {
                    types = "NONE",
                    methods = "italic",
                    numbers = "NONE",
                    strings = "NONE",
                    comments = "italic",
                    keywords = "bold,italic",
                    constants = "bold,italic",
                    functions = "italic",
                    operators = "NONE",
                    variables = "NONE",
                    parameters = "NONE",
                    conditionals = "italic",
                    virtual_text = "NONE",
                },
                plugins = { all = true },
                options = {
                    transparency = false,
                },
            })
            -- vim.cmd.colorscheme("onedark")
        end,
    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            require("rose-pine").setup({
                variant = "auto",      -- auto, main, moon, or dawn
                dark_variant = "main", -- main, moon, or dawn
                dim_inactive_windows = true,
                extend_background_behind_borders = true,

                enable = {
                    terminal = true,
                    legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
                    migrations = true,        -- Handle deprecated options automatically
                },

                styles = {
                    bold = true,
                    italic = true,
                    transparency = false,
                },

                -- groups = {
                --     border = "muted",
                --     link = "iris",
                --     panel = "surface",
                --
                --     error = "love",
                --     hint = "iris",
                --     info = "foam",
                --     note = "pine",
                --     todo = "rose",
                --     warn = "gold",
                --
                --     git_add = "foam",
                --     git_change = "rose",
                --     git_delete = "love",
                --     git_dirty = "rose",
                --     git_ignore = "muted",
                --     git_merge = "iris",
                --     git_rename = "pine",
                --     git_stage = "iris",
                --     git_text = "rose",
                --     git_untracked = "subtle",
                --
                --     h1 = "iris",
                --     h2 = "foam",
                --     h3 = "rose",
                --     h4 = "gold",
                --     h5 = "pine",
                --     h6 = "foam",
                -- },

                palette = {
                    -- Override the builtin palette per variant
                    -- moon = {
                    --     base = '#18191a',
                    --     overlay = '#363738',
                    -- },
                },

                -- NOTE: Highlight groups are extended (merged) by default. Disable this
                -- per group via `inherit = false`
                highlight_groups = {
                    Comment = { fg = "foam" },
                    StatusLine = { fg = "love", bg = "love", blend = 15 },
                    VertSplit = { fg = "muted", bg = "muted" },
                    Visual = { fg = "base", bg = "text", inherit = false },
                },

                before_highlight = function(group, highlight, palette)
                    -- Disable all undercurls
                    -- if highlight.undercurl then
                    --     highlight.undercurl = false
                    -- end
                    --
                    -- Change palette colour
                    -- if highlight.fg == palette.pine then
                    --     highlight.fg = palette.foam
                    -- end
                end,
            })

            -- vim.cmd("colorscheme rose-pine")
            -- vim.cmd("colorscheme rose-pine-main")
            -- vim.cmd("colorscheme rose-pine-moon")
            -- vim.cmd("colorscheme rose-pine-dawn")
        end,
    },
    {
        "https://github.com/phha/zenburn.nvim",
        config = function()
            require("zenburn").setup()
            vim.cmd("colorscheme zenburn")
        end
    },
    {
        "https://github.com/ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = true,
        config = function()
            require("gruvbox").setup({
                terminal_colors = true, -- add neovim terminal colors
                undercurl = true,
                underline = true,
                bold = true,
                italic = {
                    strings = true,
                    emphasis = true,
                    comments = true,
                    operators = false,
                    folds = true,
                },
                strikethrough = true,
                invert_selection = false,
                invert_signs = false,
                invert_tabline = false,
                inverse = true, -- invert background for search, diffs, statuslines and errors
                contrast = "",  -- can be "hard", "soft" or empty string
                palette_overrides = {},
                overrides = {},
                dim_inactive = false,
                transparent_mode = false,
            })
            -- vim.cmd("colorscheme gruvbox")
        end
    }
}
