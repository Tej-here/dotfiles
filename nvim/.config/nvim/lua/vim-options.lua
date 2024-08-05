vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
vim.opt.relativenumber= true
vim.opt.number = true
vim.opt.clipboard = 'unnamedplus' 

vim.keymap.set('c','jk','<Esc>',{})
vim.keymap.set('i','jk','<Esc>',{})
vim.keymap.set('v','jk','<Esc>',{})
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
