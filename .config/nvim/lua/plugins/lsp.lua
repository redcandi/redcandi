
return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim", -- LSP/DAP installer
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/nvim-cmp",        -- Autocompletion
      "hrsh7th/cmp-nvim-lsp",    -- LSP source for nvim-cmp
      "L3MON4D3/LuaSnip",        -- Snippet engine
      "saadparwaiz1/cmp_luasnip" -- Snippets source for cmp
    },
    config = function()
      -- Mason setup
      require("mason").setup()
      require("mason-lspconfig").setup {
        ensure_installed = { "lua_ls", "rust_analyzer","clangd","asm_lsp","gopls" },
      }

      -- nvim-cmp setup

        local cmp = require("cmp")
        local luasnip = require("luasnip")

        cmp.setup {
          snippet = {
            expand = function(args) luasnip.lsp_expand(args.body) end,
          },
          window = {
            completion = cmp.config.window.bordered(), -- small bordered window
            documentation = cmp.config.window.bordered(),
          },
          formatting = {
            fields = { "abbr", "kind", "menu" },
          },
          mapping = cmp.mapping.preset.insert({
            ["<C-Space>"] = cmp.mapping.complete(),
            ["<Tab>"] = cmp.mapping.select_next_item(),
            ["<S-Tab>"] = cmp.mapping.select_prev_item(),

            -- Enter only confirms if a completion is explicitly selected
            ["<CR>"] = cmp.mapping(function(fallback)
              if cmp.visible() and cmp.get_selected_entry() then
                cmp.confirm({ select = false }) -- don’t auto-pick the first
              else
                fallback() -- just insert newline
              end
            end, { "i", "s" }),
          }),
          sources = cmp.config.sources({
            { name = "nvim_lsp" },
            { name = "luasnip" },
          }),
        }
      -- LSP capabilities
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- Lua
      require("lspconfig").lua_ls.setup {
        capabilities = capabilities,
        settings = {
          Lua = {
            diagnostics = { globals = { "vim" } },
          },
        },
      }

      -- Rust
      require("lspconfig").rust_analyzer.setup {
        capabilities = capabilities,
      }

      require("lspconfig").gopls.setup{
              capabilities = capabilities,
      }

      require("lspconfig").clangd.setup{
              capabilities = capabilities,
      }

      require("lspconfig").asm_lsp.setup{
              capabilities = capabilities,
      }

end,
  }
}
