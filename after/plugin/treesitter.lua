require'nvim-treesitter.configs'.setup {
  ensure_installed = { "python", "rust", "c", "lua", "vim", "vimdoc", "query" },

  sync_install = false,

  auto_install = true,

  highlight = {
    enable = true,
  },
}
