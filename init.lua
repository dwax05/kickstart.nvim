-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- [[ Lazy Plugin Manager ]]
require "lazy-bootstrap"
require "lazy-plugin"

require "auto"
require "options"
require "keymaps"

-- [[ Configure Telescope ]]
require "telescope-setup"

-- [[ Configure Treesitter ]]
require "treesitter-setup"

-- [[ Configure LSP ]]
require "lsp-setup"

-- [[ Configure nvim-cmp ]]
require "cmp-setup"

-- [[ Colorscheme ]]
require "colorscheme"

-- [[ Set Up Harpoon ]]
require "custom.harpoon"

-- [[ Set up Attempt ]]
require "custom.attempt"

-- [[ Set up Hop ]]
require "custom.hop"

-- [[ Set up Project ]]
require "custom.project"

-- [[ Neovide Settings ]]
if vim.g.neovide then
  require "custom.neovide"
end

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
