
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

vim.cmd('set expandtab sw=4 sts=4')
vim.cmd('set tabstop=4')
vim.cmd('set shiftwidth=4')
vim.cmd('set smartindent')
vim.cmd('set expandtab')

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require('plugins.plugins')
require('plugins.custom')
require('config.plugins')
require('config.mappings')

require('lspconfig').pylsp.setup{
  cmd = { "pylsp" },
  settings = {
    pylsp = {
      plugins = {
        rope_autoimport = {
          enabled = true,
        },
        pycodestyle = {
          enabled = false,
        },
        pyflakes = {
          enabled = false,
        },
        pylint = {
          enabled = false,
        },
      },
    },
  },
}

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
