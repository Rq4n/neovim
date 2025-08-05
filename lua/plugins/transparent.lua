return {
  {
    "tribela/transparent.nvim",
    event = "VeryLazy",
    config = function()
      require("transparent").setup({
        enable = false,
        extra_groups = {
          "Normal",
          "NormalNC",
          "NormalFloat",
          "FloatBorder",
          "TelescopeNormal",
          "TelescopeBorder",
          "NvimTreeNormal",
          "StatusLine",
          "VertSplit",
        },
        exclude_groups = {},
      })

      vim.cmd("TransparentDisable")
    end,
  },
}
