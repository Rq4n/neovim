return {
  'tribela/transparent.nvim',
  event = 'VimEnter',
  config = function()
    require("transparent").setup({
      extra_groups = {
        "Normal", "NormalNC", "NormalFloat", "FloatBorder", "VertSplit", -- básico
        "NeoTreeNormal", "NeoTreeNormalNC", "NeoTreeFloatNormal", "NeoTreeEndOfBuffer", -- específico do Neo-tree
        "WinSeparator"
      },
    })
  end
}

