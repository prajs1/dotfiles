return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  conf = function ()
    -- Gain access to which-key plugin
    local whichkey = require("which-key")

    whichkey.setup({})

    whichkey.register({
      ['<leader>/'] = { name = "Comments", _ = 'which_key_ignore' },
      ['<leader>c'] = { name = '[C]ode', _ = 'which_key_ignore' },
      ['<leader>d'] = { name = '[D]ebug' , _ = 'which_key_ignore' },
      ['<leader>e'] = { name = '[E]xplorer', _ = 'which_key_ignore' },
      ['<leader>f'] = { name = '[F]ind', _ = 'which_key_ignore' },
      ['<leader>g'] = { name = '[G]it', _ = 'which_key_ignore' },
      ['<leader>J'] = { name = '[J]ava', _ = 'which_key_ignore' },
      ['<leader>w'] = { name = '[W]indow', _ = 'which_key_ignore' }
    })
  end
}
