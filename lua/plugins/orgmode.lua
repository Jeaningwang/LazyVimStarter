return {
  {

    "nvim-orgmode/orgmode",
    event = "VeryLazy",
    ft = { "org" },
    config = function()
      -- Setup orgmode
      local orgHome = os.getenv("ORG_HOME")
      require("orgmode").setup({
        org_agenda_files = orgHome .. "/**/*",
        -- org_default_notes_file = "~/orgfiles/refile.org",
      })

      -- NOTE: If you are using nvim-treesitter with `ensure_installed = "all"` option
      -- add `org` to ignore_install
      -- require('nvim-treesitter.configs').setup({
      --   ensure_installed = 'all',
      --   ignore_install = { 'org' },
      -- })
    end,
  },
  {
    "akinsho/org-bullets.nvim",
    config = function()
      require("org-bullets").setup({
        concealcursor = false, -- If false then when the cursor is on a line underlying characters are visible
        symbols = {
          -- list symbol
          list = "•",
          -- headlines can be a list
          headlines = { "◉", "○", "✸", "✿" },
          -- or a function that receives the defaults and returns a list
          --[[
          headlines = function(default_list)
            table.insert(default_list, "♥")
            return default_list
          end,
          ]]
          -- or false to disable the symbol. Works for all symbols
          -- headlines = false,
          checkboxes = {
            half = { "", "OrgTSCheckboxHalfChecked" },
            done = { "✓", "OrgDone" },
            todo = { "˟", "OrgTODO" },
          },
        },
      })
    end,
  },
}
