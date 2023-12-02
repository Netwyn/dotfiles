
require('colorizer').setup({})

require('lualine').setup {
  options = {
    theme = 'catppuccin',
  },
}

require('nvim-treesitter.configs').setup {
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = {
      'java',
    },
  },
}

require('barbecue').setup {
  theme = 'catppuccin',
}

local chadtree_settings = {
  view = {
    width = 30,
  },
}
vim.api.nvim_set_var('chadtree_settings', chadtree_settings)

vim.g.catppuccin_flavour = 'mocha'
require('catppuccin').setup()
vim.cmd [[colorscheme catppuccin]]
vim.cmd [[set expandtab sw=4 sts=4]]

