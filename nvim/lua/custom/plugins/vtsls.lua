return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      local lspconfig = require("lspconfig")
      local util = require("lspconfig.util")

      lspconfig.vtsls.setup({
        root_dir = util.root_pattern(
          "tsconfig.json",
          "jsconfig.json",
          "package.json",
          ".git"
        ),
        filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
        settings = {
          vtsls = {
            tsserver = {
              globalPlugins = {},
            },
          },
        },
      })
    end,
  },
}
