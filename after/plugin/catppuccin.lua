vim.g.catppuccin_flavour = "mocha" -- Adjust flavor as needed

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

vim.cmd("colorscheme catppuccin")
