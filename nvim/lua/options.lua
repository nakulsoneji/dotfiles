vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

--fix style tag indentation
vim.cmd([[ let g:html_indent_style1 = "inc" ]])

--for nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.cursorline = true

--for which-key
vim.o.timeout = true
vim.o.timeoutlen = 300

--mouse
vim.o.mousemoveevent = true

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.autoread = true

-- use spaces for tabs and whatnot
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.cmd [[ set noswapfile ]]

-- Line numbers
vim.wo.number = true

-- Cursorhold for diagnostic
vim.o.updatetime = 250

-- fix neorg concealer
vim.opt.conceallevel = 2

