return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = { "c", "lua", "rust" },
    highlight = {
      disable = { "sql" },
    },
  },
}
