return {
  "nvim-treesitter/nvim-treesitter",
  build = ":tsupdate",
  config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
      ensure_installed = {"lua", "javascript", "java"},
      highlight = { enable = true },
      indent = { enable = true },
    })
  end,
}
