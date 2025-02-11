return {
  -- fittencode
  -- {
  --   "luozhiya/fittencode.nvim",
  --   config = function()
  --     require("fittencode").setup()
  --     -- require("fittencode").setup({
  --     --   completion_mode = "source",
  --     -- })
  --   end,
  --   log = {
  --     level = vim.log.levels.DEBUG,
  --   },
  -- },
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
  -- *****************************************
  -- codecompanion
  -- *****************************************
  -- {
  --   "olimorris/codecompanion.nvim",
  --   dependencies = {
  --     "nvim-lua/plenary.nvim",
  --     "nvim-treesitter/nvim-treesitter",
  --   },
  --   config = function()
  --     require("codecompanion").setup({
  --       adapters = {
  --         deepseek = function()
  --           return require("codecompanion.adapters").extend("deepseek", {
  --             env = {
  --               api_key = "sk-0f839c4be8d4448eb5efd08a815684ba",
  --             },
  --           })
  --         end,
  --       },
  --       strategies = {
  --         chat = { adapter = "deepseek" },
  --         inline = { adapter = "deepseek" },
  --         agent = { adapter = "deepseek" },
  --       },
  --     })
  --   end,
  -- },
  -- *****************************************
  -- llm.nvim
  -- *****************************************
  {
    "Kurama622/llm.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "MunifTanjim/nui.nvim" },
    cmd = { "LLMSessionToggle", "LLMSelectedTextHandler", "LLMAppHandler" },
    config = function()
      require("llm").setup({
        url = "https://api.deepseek.com/chat/completions",
        model = "deepseek-chat",
        api_type = "openai",
        max_tokens = 4096,
        temperature = 0.3,
        top_p = 0.7,

        prompt = "You are a helpful Chinese assistant.",

        prefix = {
          user = { text = "  ", hl = "Title" },
          assistant = { text = "  ", hl = "Added" },
        },

        -- history_path = "/tmp/llm-history",
        save_session = true,
        max_history = 15,
        max_history_name_length = 20,

        -- stylua: ignore
        keys = {
          -- The keyboard mapping for the input window.
          ["Input:Submit"]      = { mode = "n", key = "<cr>" },
          ["Input:Cancel"]      = { mode = {"n", "i"}, key = "<C-c>" },
          ["Input:Resend"]      = { mode = {"n", "i"}, key = "<C-r>" },

          -- only works when "save_session = true"
          ["Input:HistoryNext"] = { mode = {"n", "i"}, key = "<C-j>" },
          ["Input:HistoryPrev"] = { mode = {"n", "i"}, key = "<C-k>" },

          -- The keyboard mapping for the output window in "split" style.
          ["Output:Ask"]        = { mode = "n", key = "i" },
          ["Output:Cancel"]     = { mode = "n", key = "<C-c>" },
          ["Output:Resend"]     = { mode = "n", key = "<C-r>" },

          -- The keyboard mapping for the output and input windows in "float" style.
          ["Session:Toggle"]    = { mode = "n", key = "<leader>ac" },
          ["Session:Close"]     = { mode = "n", key = {"<esc>", "Q"} },
        },
      })
    end,
    keys = {
      { "<leader>ac", mode = "n", "<cmd>LLMSessionToggle<cr>" },
      { "<leader>ae", mode = "v", "<cmd>LLMSelectedTextHandler 请解释下面这段代码<cr>" },
      { "<leader>ts", mode = "x", "<cmd>LLMSelectedTextHandler 英译汉<cr>" },
    },
  },
}
