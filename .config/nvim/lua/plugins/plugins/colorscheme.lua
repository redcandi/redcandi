return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- latte, frappe, macchiato, mocha
        transparent_background = false,
        integrations = {
          nvimtree = true,
          telescope = true,
          treesitter = true,
          cmp = true,
          gitsigns = true,
          lsp_trouble = true,
          which_key = true,
          illuminate = true,
        },
      })

      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
