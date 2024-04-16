-- https://pycodestyle.pycqa.org/en/latest/intro.html#error-codes
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#pylsp

return {
  {
    "neovim/nvim-lspconfig",
    event = "LazyFile",
    dependencies = {
      { "folke/neoconf.nvim", cmd = "Neoconf", config = false, dependencies = { "nvim-lspconfig" } },
      { "folke/neodev.nvim", opts = {} },
      "mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        pylsp = {
          settings = {
            pylsp = {
              plugins = {
                pycodestyle = {
                  ignore = { "W391" },
                  maxLineLength = 100,
                },
              },
            },
          },
        },
      },
      -- require("lspconfig").pylsp.setup({
      --   settings = {
      --     pylsp = {
      --       plugins = {
      --         pycodestyle = {
      --           -- ignore = { "W391" },
      --           maxLineLength = 100,
      --         },
      --       },
      --     },
      --   },
      -- }),
    },
  },
}
-- return {}
