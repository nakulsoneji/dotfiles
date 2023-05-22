local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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

local plugins = {
  "windwp/nvim-autopairs",
  "folke/tokyonight.nvim",
  {
    "catppuccin/nvim",
    name = "catppuccin"
  },
  {
    "ellisonleao/gruvbox.nvim", 
    priority = 1000
  },
  {
    'rose-pine/neovim', 
    name = 'rose-pine', 
  },
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    dependencies = {
      'nvim-lua/plenary.nvim'
    }
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons"
    }
  },
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    }
  },
  {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v2.x',
    dependencies = {
  -- LSP Support
      {'neovim/nvim-lspconfig'},         -- Required
      {
        'williamboman/mason.nvim',
        build = ':MasonUpdate',
      },       -- Optional
      {'williamboman/mason-lspconfig.nvim'}, -- Optional

  -- Autocompletion
      {'hrsh7th/nvim-cmp'},     -- Required
      {'hrsh7th/cmp-nvim-lsp'},   -- Required
      {'hrsh7th/cmp-buffer'},     -- Optional
      {'hrsh7th/cmp-path'},     -- Optional
      {'saadparwaiz1/cmp_luasnip'}, -- Optional
      {'hrsh7th/cmp-nvim-lua'},
      {'hrsh7th/cmp-cmdline'},-- Optional

  -- Snippets
      {'L3MON4D3/LuaSnip'},       -- Required
      {'rafamadriz/friendly-snippets'}, -- Optional
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build=":TSUpdate"
  },
  "windwp/nvim-ts-autotag",
  {
    "akinsho/bufferline.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons"
    }
  },
  "folke/which-key.nvim",
  {
    "folke/trouble.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons"
    }
  },
  "onsails/lspkind.nvim",
  {
    "glepnir/lspsaga.nvim",
    event = "BufRead",
    dependencies = {
      {"nvim-tree/nvim-web-devicons"},
      --Please make sure you install markdown and markdown_inline parser
      {"nvim-treesitter/nvim-treesitter"}
    }
  },
  {
    "folke/noice.nvim",
    dependencies = {
    -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    "MunifTanjim/nui.nvim",
    -- OPTIONAL:
    --   `nvim-notify` is only needed, if you want to use the notification view.
    --   If not available, we use `mini` as the fallback
    "rcarriga/nvim-notify",
    }
  },
  {
    'simrat39/rust-tools.nvim',
    dependencies="neovim/nvim-lspconfig"
  },
  --"lukas-reineke/indent-blankline.nvim",
  'j-hui/fidget.nvim',
  {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    dependencies = { { "nvim-lua/plenary.nvim" } },
  },
  "christoomey/vim-tmux-navigator"
}

local opts = {}

require("lazy").setup(plugins, opts)
