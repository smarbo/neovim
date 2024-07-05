vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set nu rnu")
vim.cmd("set clipboard=unnamed")
vim.g.mapleader = " "
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)
require("lazy").setup("plugins")
vim.keymap.set('i', '<C-l>', '<Esc>', { noremap = true, silent = true })
 vim.keymap.set('n', '<C-s>', ':wa<CR>', { noremap = true, silent = true })
   vim.keymap.set('i', '<C-s>', '<Esc>:wa<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-k>', '<C-v>', { noremap = true, silent = true })
