-- https://pycodestyle.pycqa.org/en/latest/intro.html#error-codes
-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#pylsp
return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        -- pyright will be automatically installed with mason and loaded with lspconfig
        pyright = {
          settings = {
            pylsp = {
              plugins = {
                pycodestyle = {
                  -- ignore = { "W391" },
                  maxLineLength = 120,
                },
              },
            },
          },
        },
      },
    },
  },
}
