return {
  "rcarriga/nvim-notify",
  config = function ()
      local notify = require("notify")

      notify.setup({
          timeout = 1500,
          max_width = 70,
          background_colour = "#000000",
          render = "wrapped-compact",
      })

      vim.notify = notify
  end
}
