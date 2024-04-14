return {
  "voldikss/vim-translator",
  opts = {
    vim.cmd("let g:translator_default_engines = ['bing', 'youdao']"),
  },
  keys = {
    {
      "<leader>sw",
      ":!fy ",
      desc = "translate fy",
    },
    {
      "<leader>st",
      "<cmd>Translate<cr>",
      desc = "translate under cursor",
    },
  },
}
