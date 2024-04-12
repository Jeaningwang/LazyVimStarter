return {
  "nvim-telescope/telescope.nvim",
  keys = {
    {
      "<leader>fb",
      false,
    },
    {
      "<leader>ff",
      "<cmd>Telescope buffers<cr>",
      desc = "Recent Buffers",
      remap = true,
    },
    {
      "<leader>ht",
      "<cmd>Telescope colorscheme<cr>",
      desc = "切换主题",
    },
    {
      "<leader><space>",
      false,
    },
    {
      "<leader>pf",
      "<cmd>Telescope find_files<cr>",
      desc = "Find Files",
      remap = true,
    },
    {
      "<leader>sg",
      false,
    },
    {
      "<leader>sp",
      -- "<cmd>Telescope live_grep<cr>",
      "<cmd>lua require('telescope.builtin').live_grep()<cr>",
      desc = "Global Search",
      remap = true,
    },
  },
}
