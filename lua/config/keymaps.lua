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
vim.keymap.set("n", "<leader>bs", "<cmd>wa<cr>", opts)

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
