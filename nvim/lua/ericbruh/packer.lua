-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    })
    use({
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup {
                icons = false,
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    })
    use({"nvim-treesitter/nvim-treesitter", run = ":TSUpdate"})
    use("neovim/nvim-lspconfig")
    use("hrsh7th/nvim-cmp") -- for auto completion
    use("hrsh7th/cmp-nvim-lsp") -- Lsp source for nvim-cmp
    use("saadparwaiz1/cmp_luasnip") -- Snippets source for nvim-cmp
    use("L3MON4D3/LuaSnip") -- Snippets plugin
    use('simrat39/rust-tools.nvim')
    use {
        'terrortylor/nvim-comment',
        config = function()
            require('nvim_comment').setup()
        end
    }
    use{
        "HiPhish/nvim-ts-rainbow2",
        config = function()
            require("nvim-treesitter.configs").setup {
                rainbow = {
                    enable = true,
                    -- list of languages you want to disable the plugin for
                    -- Which query to use for finding delimiters
                    query = 'rainbow-parens',
                    -- Highlight the entire buffer all at once
                    strategy = require 'ts-rainbow.strategy.global',
                }
            }
        end
    }
end)
