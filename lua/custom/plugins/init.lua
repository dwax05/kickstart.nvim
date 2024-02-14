-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'goolord/alpha-nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function ()
      require'alpha'.setup(require'alpha.themes.startify'.config)
    end
  },

  {
    'stevearc/oil.nvim',
    opts = {
      view_options = {
        show_hidden = true,
      },
      vim.keymap.set("n", "<leader>.", ":Oil<cr>", { desc = "Browse Dir" })
    },
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },

  {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" }
  },

  {
    'toppair/reach.nvim',
    config = function ()
      require('reach').setup({
        notifications = true
      })
    end
  },

  {
    "folke/twilight.nvim",
  },

  {
    'smoka7/hop.nvim',
    version = "*",
    opts = {},
  },

  {
    "sontungexpt/witch",
    priority = 1000,
    lazy = false,
    config = function(_, opts)
      require("witch").setup(opts)
    end,
  },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
  },

  {
    "amitds1997/remote-nvim.nvim",
    version = "*", -- Pin to GitHub releases
    dependencies = {
      "nvim-lua/plenary.nvim", -- For standard functions
      "MunifTanjim/nui.nvim", -- To build the plugin UI
      "nvim-telescope/telescope.nvim", -- For picking b/w different remote methods
    },
    config = true,
  },

  {
    'm-demare/attempt.nvim',
    dependencies = 'nvim-lua/plenary.nvim',
    config = function ()
      require('attempt').setup{
        ext_options = { 'lua', 'js', 'py', 'cpp', 'c', 'java', 'rs', 'sh' },
        run = {
          py = { 'w !python3' },      -- Either table of strings or lua functions
        }
      }
    end
  },

  {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = true,
  },

  {
    "windwp/nvim-autopairs",
    -- Optional dependency
    dependencies = { 'hrsh7th/nvim-cmp' },
    config = function()
      require("nvim-autopairs").setup {}
      -- If you want to automatically add `(` after selecting a function or method
      local cmp_autopairs = require('nvim-autopairs.completion.cmp')
      local cmp = require('cmp')
      cmp.event:on(
        'confirm_done',
        cmp_autopairs.on_confirm_done()
      )
    end,
  },

  {
    'MunifTanjim/nui.nvim'
  },

  {
    'jghauser/mkdir.nvim'
  },

  {
    "rcarriga/nvim-notify"
  },

  {
    "romgrk/barbar.nvim",
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
  },
}
