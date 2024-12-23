return {
  -- Vanduir
  {
    "nvchad/ui",
    config = function ()
      require "nvchad"
    end
  },
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    config = function()
      require "configs.conform"
    end,
  },
  -- Vanduir: minimap
  {
    "wfxr/minimap.vim",
    lazy = false,
  },
  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
  	"williamboman/mason.nvim",
  	opts = {
  		ensure_installed = {
        "eslint-lsp",
        "tailwindcss-language-server",
        "typescript-language-server",
  			"lua-language-server",
        "stylua",
  			"html-lsp",
        "css-lsp" ,
        "prettierd",
  		},
  	},
  },
  --
  {
  	"nvim-treesitter/nvim-treesitter",
    dependencies = {
      { "nvim-treesitter/nvim-treesitter-context" },
    },
  	opts = {
      ensure_installed = {
        "javascript",
        "typescript",
        "tsx",
  			"vim",
        "lua",
        "html",
        "css",
        "vimdoc",
        "rust",
        "prisma",
      },
      autopairs = {
        enable = true,
      },
  	},
  },

  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
    -- use opts = {} for passing setup options
    -- this is equalent to setup({}) function
  },

  {
    "windwp/nvim-ts-autotag",
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = function ()
      require('nvim-ts-autotag').setup({
        -- your config
      })
    end,
    lazy = true,
    event = "VeryLazy"
  },  
}
