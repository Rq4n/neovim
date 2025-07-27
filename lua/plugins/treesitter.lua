return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "go", "lua", "bash", "vim", "json" },
      highlight = {
        enable = true,
      },
      indent = { enable = true },
    })
  end,
}

