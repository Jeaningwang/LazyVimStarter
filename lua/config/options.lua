-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Hint: use `:h <option>` to figure out the meaning if needed
vim.opt.clipboard = "unnamedplus" -- use system clipboard
vim.opt.completeopt = { "menu", "menuone", "noselect" }
vim.opt.mouse = "a" -- allow the mouse to be used in Nvim

-- Tab
vim.opt.tabstop = 4 -- number of visual spaces per TAB
vim.opt.softtabstop = 4 -- number of spacesin tab when editing
vim.opt.shiftwidth = 4 -- insert 4 spaces on a tab
vim.opt.expandtab = true -- tabs are spaces, mainly because of python

-- UI config
-- 设置字体字号
-- vim.cmd("set guifont=" .. vim.fn.fnameescape("Source Code Pro") .. ":h14")
vim.cmd("set guifont=" .. vim.fn.fnameescape("SauceCodePro Nerd Font Mono") .. ":h16")
-- vim.cmd('set guifont=' .. vim.fn.fnameescape('MesloLGL Nerd Font Mono') .. ':h14')
-- vim.cmd('set guifont=' .. vim.fn.fnameescape('Hack Nerd Font Mono') .. ':h14')
vim.opt.number = true -- show absolute number
vim.opt.relativenumber = true -- add numbers to each line on the left side
vim.opt.cursorline = true -- highlight cursor line underneath the cursor horizontally
vim.opt.splitbelow = true -- open new vertical split bottom
vim.opt.splitright = true -- open new horizontal splits right
vim.opt.termguicolors = true -- enabl 24-bit RGB color in the TUI
vim.opt.showmode = false -- we are experienced, wo don't need the "-- INSERT --" mode hint
-- 光标移动的时候始终保持上下左右至少有 8 个空格的间隔
vim.o.scrolloff = 4
vim.o.sidescrolloff = 4

-- Searching
vim.opt.incsearch = true -- search as characters are entered
vim.opt.hlsearch = false -- do not highlight matches
vim.opt.ignorecase = true -- ignore case in searches by default
vim.opt.smartcase = true -- but make it case sensitive if an uppercase is entered

-- Ohters
-- 使用 utf-8 编码
vim.g.encoding = "utf-8"
vim.o.fileencoding = "utf-8"
-- 设置 leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- 禁止创建备份文件
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false
-- 把空格显示成一个点, tab 显示成一个字符
vim.o.list = true
vim.o.listchars = "space:·,tab:<->"
-- 右侧参考线
vim.wo.colorcolumn = "120"
-- 新行对齐当前行
vim.bo.autoindent = true
vim.bo.smartindent = true
-- 设置命令行的高度
vim.o.cmdheight = 1
-- 设置自动换行
vim.o.wrap = 1
