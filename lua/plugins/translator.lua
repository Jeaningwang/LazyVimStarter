return {
  "voldikss/vim-translator",
  opts = {},
  config = function()
    vim.cmd("let g:translator_default_engines = ['bing', 'youdao']")
  end,
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
