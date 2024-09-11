return {
	{
		"hrsh7th/cmp-nvim-lsp",
	},
	{
		"L3MON4D3/LuaSnip",
		dependencies = {
			"saadparwaiz1/cmp_luasnip",
			"rafamadriz/friendly-snippets",
		},
	},
	{
		"hrsh7th/nvim-cmp",
    dependencies = {
      -- buffer based completion options
      "hrsh7th/cmp-buffer",
      -- path based completion options
      "hrsh7th/cmp-path",
    },
		config = function()
			local cmp = require("cmp")
			require("luasnip.loaders.from_vscode").lazy_load()

			cmp.setup({
        -- How should completion options be displayed
        completion = {
          -- menu: display options in a menu
          -- menuone: automatically select the first option of the menu
          -- preview: automatically display the completion candidate while navigating the menu
          -- noselect: prevent neovim from automatically selecting a completion option while navigating the menu
          competeopt = "menu,menuone,preview,noselect"
        },
        -- Setup snippet support based on the active lsp and the current text of the file
				snippet = {
					expand = function(args)
						require("luasnip").lsp_expand(args.body)
					end,
				},
				window = {
					completion = cmp.config.window.bordered(),
					documentation = cmp.config.window.bordered(),
				},
				mapping = cmp.mapping.preset.insert({
          -- ["<C-k>"] = cmp.mapping.select_prev_item(),
          -- ["<C-j>"] = cmp.mapping.select_next_item(),
					["<C-b>"] = cmp.mapping.scroll_docs(-4),
					["<C-f>"] = cmp.mapping.scroll_docs(4),
					["<C-Space>"] = cmp.mapping.complete(),
					["<C-e>"] = cmp.mapping.abort(),
					["<CR>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
				}),
				sources = cmp.config.sources({
					{ name = "nvim_lsp" },
					{ name = "luasnip" },
          { name = "buffer" },
          { name = "path" }
				}, {
					{ name = "buffer" },
				}),
			})
		end,
	},
}
