-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- define common options
local opts = {
  noremap = true, -- non-recursive
  silent = true, -- do not show message
}

-- 保证编辑的行一直居中
-- vim.keymap.set({ 'n' }, '#', '#zz', opts)
-- vim.keymap.set({ 'n' }, '*', '*zz', opts)
-- vim.keymap.set({ 'n' }, 'w', 'wzz', opts)
-- vim.keymap.set({ 'n' }, 'W', 'Wzz', opts)
-- vim.keymap.set({ 'n' }, 'e', 'ezz', opts)
-- vim.keymap.set({ 'n' }, 'E', 'Ezz', opts)
-- vim.keymap.set({ 'n' }, 'b', 'bzz', opts)
-- vim.keymap.set({ 'n' }, 'B', 'Bzz', opts)
-- vim.keymap.set({ 'n' }, 'H', 'Hzz', opts)
-- vim.keymap.set({ 'n' }, 'L', 'Lzz', opts)
-- vim.keymap.set({ 'n' }, '$', '$zz', opts)
-- vim.keymap.set({ 'n' }, '^', '^zz', opts)
vim.keymap.set({ "n" }, "j", "jzz", opts)
vim.keymap.set({ "n" }, "k", "kzz", opts)
-- vim.keymap.set({ 'n' }, 'G', 'Gzz', opts)
-- vim.keymap.set({ 'n' }, 'u', 'uzz', opts)
-- vim.keymap.set({ 'n' }, '(', '(zz', opts)
-- vim.keymap.set({ 'n' }, ')', ')zz', opts)
-- vim.keymap.set({ 'n' }, '{', '{zz', opts)
-- vim.keymap.set({ 'n' }, '}', '}zz', opts)
-- vim.keymap.set({ 'n' }, '[{', '[{zz', opts)
-- vim.keymap.set({ 'n' }, ']}', ']}zz', opts)
-- vim.keymap.set({ 'n' }, 'gd', 'gdzz', opts)

-----------------
-- Normal mode --
-----------------

-- Hint: see `:h vim.map.set()`
-- Better window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h", opts)
vim.keymap.set("n", "<C-j>", "<C-w>j", opts)
vim.keymap.set("n", "<C-k>", "<C-w>k", opts)
vim.keymap.set("n", "<C-l>", "<C-w>l", opts)
vim.keymap.set("n", "<leader>ww", "<C-w>w", opts)

-- redo
vim.keymap.set("n", "U", "<C-r>", opts)

-- Resize with arrows
-- delta: 2 lines
vim.keymap.set("n", "<C-Up>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<C-Down>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", opts)
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- 设置跳转到行的头部或尾部
vim.keymap.set({ "n", "v" }, "gh", "^", opts)
vim.keymap.set({ "n", "v" }, "gl", "$", opts)

-- 返回上一处和下一处修改点
vim.keymap.set("n", "<A-Left>", "<C-o>", opts)
vim.keymap.set("n", "<A-Right>", "<C-i>", opts)

-- 向上/向下翻页并居中
-- vim.keymap.set("n", "<leader>h", "<S-h>zz", opts)
-- vim.keymap.set("n", "<leader>l", "<S-l>zz", opts)

-- 保存所有的文件
vim.keymap.set("n", "<leader>fs", "<cmd>wa<cr>", { noremap = true, silent = true, desc = "Save all files" })

-- buffers
vim.keymap.set("n", "<leader><space>", "<cmd>e #<cr>", { desc = "Switch to Other Buffer" })

-----------------
-- Visual mode --
-----------------

-- Hint: start visual mode with the same area as the previous area and the same mode
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- 退出可视模式
vim.keymap.set("v", "v", "<ESC>", opts)

-----------------
-- Insert mode --
-----------------

vim.keymap.set("i", "jk", "<ESC>", opts)

-----------------
-- Others --
-----------------
-- 禁用掉方向键
vim.keymap.set({ "i", "n" }, "<Left>", "<Nop>", opts)
vim.keymap.set({ "i", "n" }, "<Right>", "<Nop>", opts)
vim.keymap.set({ "i", "n" }, "<Up>", "<Nop>", opts)
vim.keymap.set({ "i", "n" }, "<Down>", "<Nop>", opts)
-- 禁用掉ESC
-- vim.keymap.set({ 'i', 'n' }, '<Esc>', '<Nop>', opts)
if vim.g.vscode then
  local vscode = require("vscode")

  local map = vim.keymap.set
  -- close current buffer
  map({ "n", "i", "v" }, "<C-w>", function()
    vscode.action("workbench.action.closeActiveEditor")
  end, {
    noremap = true,
    silent = true,
    desc = "Close current buffer",
  })

  -- open command palette
  map("n", "<leader>:", function()
    vscode.action("workbench.action.showCommands")
  end, {
    noremap = true,
    silent = true,
    desc = "Open command palette",
  })

  -- toggle zen mode
  map("n", "<leader>tz", function()
    vscode.action("workbench.action.toggleZenMode")
  end, {
    noremap = true,
    silent = true,
    desc = "Toggle zen mode",
  })

  -- switch last buffer
  map("n", "<leader><space>", function()
    vscode.action("workbench.action.quickOpenPreviousRecentlyUsedEditorInGroup")
    vscode.action("list.select")
  end, {
    noremap = true,
    silent = true,
    desc = "Switch last buffer",
  })

  --  format code
  map("n", "<leader>cf", function()
    vscode.action("editor.action.formatDocument")
  end, {
    noremap = true,
    silent = true,
    desc = "Format code",
  })

  -- search in project files
  map("n", "<leader>sp", function()
    vscode.action("workbench.action.findInFiles")
  end, {
    noremap = true,
    silent = true,
    desc = "Search in project files",
  })

  -- navigate to file
  map("n", "<leader>pf", function()
    vscode.action("workbench.action.quickOpen")
  end, {
    noremap = true,
    silent = true,
    desc = "Navigate to file",
  })

  -- go to symbol
  map("n", "<leader>gs", function()
    vscode.action("workbench.action.showAllSymbols")
  end, {
    noremap = true,
    silent = true,
    desc = "Go to symbol",
  })

  -- show all file in editor
  map("n", "<leader>ff", function()
    vscode.action("workbench.action.showAllEditors")
  end, {
    noremap = true,
    silent = true,
    desc = "Show all file in editor",
  })

  -- show recent used files
  map("n", "<leader>fr", function()
    vscode.action("workbench.action.showAllEditorsByMostRecentlyUsed")
  end, {
    noremap = true,
    silent = true,
    desc = "Show recent used files",
  })

  -- rename variables
  map({ "n", "v" }, "<leader>rn", function()
    vscode.action("editor.action.rename")
  end, {
    noremap = true,
    silent = true,
    desc = "Rename variables",
  })

  -- code runner
  map("n", "<leader>ur", function()
    vscode.action("code-runner.run")
  end, {
    noremap = true,
    silent = true,
    desc = "Code runner",
  })
end
