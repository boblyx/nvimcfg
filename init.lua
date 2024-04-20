local set = vim.opt
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
set.rtp:prepend(lazypath)
require("lazy").setup("lazy.plugins")

set.tabstop = 2
set.softtabstop = 2
set.shiftwidth = 2
set.number  = true
set.expandtab = true
set.clipboard = 'unnamedplus'

