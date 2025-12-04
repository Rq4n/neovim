return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        -- Lua
        null_ls.builtins.formatting.stylua,

        -- Golang
        null_ls.builtins.diagnostics.golangci_lint,
        null_ls.builtins.formatting.goimports,

        -- Python
        null_ls.builtins.formatting.black,

        -- Javascript / Typescript / React / HTML / JSON / CSS
        null_ls.builtins.formatting.prettier,
      },
    })

    -- Format on save (optional but recommended)
    vim.keymap.set("n", "gf", vim.lsp.buf.format, { desc = "Format buffer" })
  end,
}
