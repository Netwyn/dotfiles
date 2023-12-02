
require('lazy').setup({

  {
      "ms-jpq/chadtree",
  },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      vim.g.catppuccin_flavour = 'mocha'
      vim.cmd.colorscheme 'catppuccin'
    end,
  },

  {
    "utilyre/barbecue.nvim",
    name = "barbecue",
    version = "*",
    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons", -- optional dependency
    },
    opts = {
      -- configurations go here
    },
  },

  { "nvim-lua/plenary.nvim" },

  { "MunifTanjim/nui.nvim" },

  {
    'akinsho/bufferline.nvim',       version = '*', opts = {
      options = {
        auto_start = true,
      },
    }
  },

  { 'NvChad/nvim-colorizer.lua' },

  -- Discord RPC
  { 'andweeb/presence.nvim',         version = '*' },

  -- Tag closer
  { 'alvan/vim-closetag',            version = '*' },

  -- Surround
  { 'tpope/vim-surround',            version = '*' },

  -- Autopairs
  { 'jiangmiao/auto-pairs',          version = '*' },

  -- Rooter
  { 'airblade/vim-rooter',           version = '*' },

  -- fzf native stuff
  {
    'nvim-telescope/telescope-fzf-native.nvim',
    build = 'make',
    cond = function()
      return vim.fn.executable 'make' == 1
    end,
    config = function()
      require('telescope').setup({
        defaults = {
          file_ignore_patterns = {
            "node_modules",
            "dist",
            "target",
          }
        }
      })
    end,
  },

  { 'nvim-tree/nvim-web-devicons', version = '*' },

  { 'github/copilot.vim',          version = '*' },

  { 'akinsho/toggleterm.nvim', version = '*', opts = {
    size = 20,
    open_mapping = [[<F7>]],
    hide_numbers = true,
    shade_filetypes = {},
    shade_terminals = true,
    shading_factor = 1,
    start_in_insert = true,
    persist_size = true,
    direction = 'horizontal',
    close_on_exit = true,
    shell = vim.o.shell,
  }
  },

  { 'mbbill/undotree' },

  -- Git related plugins
  'tpope/vim-fugitive',
  'tpope/vim-rhubarb',

  -- Detect tabstop and shiftwidth automatically
  'tpope/vim-sleuth',

  {
    -- LSP Configuration & Plugins
    'neovim/nvim-lspconfig',
    dependencies = {
      -- Automatically install LSPs to stdpath for neovim
      'williamboman/mason.nvim',
      'williamboman/mason-lspconfig.nvim',

      -- Useful status updates for LSP
      -- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
      { 'j-hui/fidget.nvim', opts = {} },

      -- Additional lua configuration, makes nvim stuff amazing!
      'folke/neodev.nvim',
    },
  },

  {
    -- Autocompletion
    'hrsh7th/nvim-cmp',
    dependencies = { 'hrsh7th/cmp-nvim-lsp', 'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip' },
  },

  -- Useful plugin to show you pending keybinds.
  { 'folke/which-key.nvim',          opts = {} },
  {
    -- Adds git releated signs to the gutter, as well as utilities for managing changes
    'lewis6991/gitsigns.nvim',
    opts = {
      -- See `:help gitsigns.txt`
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
    },
  },

  {
    -- Set lualine as statusline
    'nvim-lualine/lualine.nvim',
    -- See `:help lualine.txt`
    opts = {
      options = {
        icons_enabled = false,
        -- theme = 'onedark',
        -- theme = 'gruvbox_dark',
        -- theme = 'nord',
        theme = 'catppuccin',
        component_separators = '|',
        section_separators = '',
      },
    },
    config = function()
      require('lualine').setup({
        options = {
          icons_enabled = false,
          theme = 'catppuccin',
          component_separators = '|',
          section_separators = '',
        },
      })
    end,
  },

  {
    -- Add indentation guides even on blank lines
    'lukas-reineke/indent-blankline.nvim',
    -- Enable `lukas-reineke/indent-blankline.nvim`
    -- See `:help indent_blankline.txt`
    opts = {
      char = '┊',
      show_trailing_blankline_indent = false,
    },
  },

  -- "gc" to comment visual regions/lines
  { 'numToStr/Comment.nvim',         opts = {} },

  -- Fuzzy Finder (files, lsp, etc)
  { 'nvim-telescope/telescope.nvim', version = '*', dependencies = { 'nvim-lua/plenary.nvim' } },


  {
    -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'nvim-treesitter/nvim-treesitter-textobjects',
    },
    config = function()
      pcall(require('nvim-treesitter.install').update { with_sync = true })
    end,
  },

}, {})
