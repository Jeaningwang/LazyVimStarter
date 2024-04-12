return {
  "nvim-neo-tree/neo-tree.nvim",
  keys = {
    {
      "<A-1>",
      function()
        require("neo-tree.command").execute({ toggle = true, dir = vim.uv.cwd() })
      end,
      desc = "Explorer NeoTree",
    },
    {
      "<leader>e",
      false,
    },
    {
      "<leader>E",
      false,
    },
    {
      "<leader>fe",
      false,
    },
    {
      "<leader>fE",
      false,
    },
  },
}