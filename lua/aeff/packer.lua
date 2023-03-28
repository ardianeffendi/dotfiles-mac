local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Color Scheme
  use 'svrana/neosolarized.nvim'

  -- colorscheme helper for neovim
  use 'tjdevries/colorbuddy.nvim'

  -- Highly extendable fuzzy finder
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- or                            , branch = '0.1.x',
    requires = { { 'nvim-lua/plenary.nvim' } }
  }

  -- Syntax Highlighting
  use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })
  use 'nvim-lualine/lualine.nvim'       -- Lualine statusbar
  use 'kyazdani42/nvim-web-devicons'    -- Icon support for Lualine
  use 'neovim/nvim-lspconfig'           -- Built-in LSP for Neovim
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
  use 'onsails/lspkind-nvim'            -- VSCode-like pictograms
  use 'L3MON4D3/LuaSnip'                -- Snippet Engine
  use 'glepnir/lspsaga.nvim'            -- LSP UIs
  use 'hrsh7th/cmp-nvim-lsp'            -- nvim-cmp source for neovim's built-in LSP
  use 'hrsh7th/cmp-buffer'              -- nvim-cmp source for buffer words
  use 'hrsh7th/nvim-cmp'                -- A compeletion engine plugin for neovim
  use 'windwp/nvim-ts-autotag'          -- autotag
  use 'windwp/nvim-autopairs'           -- autopair
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
end)
