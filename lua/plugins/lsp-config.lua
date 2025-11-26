return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls", "gopls", "pyright" },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      local lspconfig = vim.lsp.config

      lspconfig['lua_ls'].capabilities = capabilities
      lspconfig['gopls'].capabilities = capabilities
      lspconfig['pyright'].capabilities = capabilities

      -- Enable LSP servers
      vim.lsp.enable({ "lua_ls", "gopls", "pyright" })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "LSP Hover" })
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, { desc = "LSP Go to Definition" })
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "LSP Code Action" })
    end,
  },
}

