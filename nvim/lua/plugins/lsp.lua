-- https://pycodestyle.pycqa.org/en/latest/intro.html#error-codes
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#pylsp
return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      require("lspconfig").pylsp.setup({
        settings = {
          pylsp = {
            plugins = {
              pycodestyle = {
                -- ignore = { "W391" },
                maxLineLength = 100,
              },
            },
          },
        },
      }),
    },
  },
}
-- return {}
