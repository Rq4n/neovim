return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup()
    vim.keymap.set('n', '<C-n>', ':Neotree toggle left<CR>', {})
    vim.keymap.set('n', '<leader>h', '<C-w>h', {})
    vim.keymap.set('n', '<leader>l', '<C-w>l', {})
  end,
}


