return {
  -- fittencode
  {
    "luozhiya/fittencode.nvim",
    config = function()
      require("fittencode").setup()
      -- require("fittencode").setup({
      --   completion_mode = "source",
      -- })
    end,
    log = {
      level = vim.log.levels.DEBUG,
    },
  },
  -- {
  --   "hrsh7th/nvim-cmp",
  --   config = function()
  --     local cmp = require("cmp")
  --     cmp.setup({
  --       sources = { name = "fittencode", group_index = 1 },
  --       mapping = {
  --         ["<cr>"] = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Insert, select = false }),
  --       },
  --     })
  --   end,
  -- },
}
