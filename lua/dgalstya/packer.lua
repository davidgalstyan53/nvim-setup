-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim' 

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use {
        "catppuccin/nvim",
        as = "catppuccin",
        config = function()
            -- Set the desired flavor of the theme
            vim.g.catppuccin_flavour = "mocha" -- Adjust flavor as needed

            -- Load the Catppuccin theme with custom color overrides
            require("catppuccin").setup({
                -- color_overrides = {
                --     mocha = {
                --         base = "#000000",   -- Overrides the base color to black
                --         mantle = "#000000", -- Overrides the mantle color to black
                --         crust = "#000000",  -- Overrides the crust color to black
                --     },
                -- },
                border = "white",
            })

            -- Apply the colorscheme 
            vim.cmd("colorscheme catppuccin")
        end,
    }


    use ('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})

    use ('theprimeagen/harpoon')

    use ('mbbill/undotree')

    use ('tpope/vim-fugitive')

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            {'neovim/nvim-lspconfig'},
            {'hrsh7th/nvim-cmp'},
            {'hrsh7th/cmp-nvim-lsp'},
            {'L3MON4D3/LuaSnip'},
        }
    }

    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }

    use ("BurntSushi/ripgrep")

    use ("github/copilot.vim")

end)
