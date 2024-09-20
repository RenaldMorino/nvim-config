-- Only required if you have packer configured as `opt`

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.4',
  -- or                            , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use ('sbdchd/neoformat')

  use({ 'AlexvZyl/nordic.nvim',
  as = 'nordic' })

  use({ 'rose-pine/neovim',
  as = 'rose-pine',
  config = function()
    vim.cmd('colorscheme rose-pine')
  end})

  use({'sainnhe/everforest',
  as = 'everforest'})

  use ({ 'sainnhe/sonokai',
  as = 'sonokai'})

  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

  use('theprimeagen/harpoon')

  use('mbbill/undotree')

  use('tpope/vim-fugitive')

  use( 'github/copilot.vim')

  use ('andweeb/presence.nvim')

  use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  requires = {
    --- Uncomment these if you want to manage LSP servers from neovim
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

    -- LSP Support
    {'neovim/nvim-lspconfig'},
    -- Autocompletion
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'L3MON4D3/LuaSnip'},
  }
}

  use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

  use 'kassio/neoterm'

  -- Optional for puml syntax highlighting:
  use 'javiorfo/nvim-nyctophilia'

  use "lukas-reineke/indent-blankline.nvim"

  use ({'preservim/nerdcommenter'})

  use {'kevinhwang91/nvim-ufo', requires = 'kevinhwang91/promise-async'}

  use {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
      require("which-key").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    end
  }

  use 'echasnovski/mini.icons'
  use 'nvim-tree/nvim-web-devicons'

  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
    require("toggleterm").setup()
  end}
  
  use 'Civitasv/cmake-tools.nvim'

end)
