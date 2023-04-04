
require('colorizer').setup({})

require('lualine').setup {
  options = {
    theme = 'catppuccin',
  },
}

require('barbecue').setup {
  theme = 'catppuccin',
}

vim.g.catppuccin_flavour = 'mocha'
require('catppuccin').setup()
vim.cmd [[colorscheme catppuccin]]

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
