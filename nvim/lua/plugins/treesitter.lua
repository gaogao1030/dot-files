return {
  {
    "nvim-treesitter/nvim-treesitter",
    keys = {
      { "v", desc = "Increment selection" },
      { "V", desc = "Decrement selection", mode = "x" },
    },
    opts = function(_, opts)
      -- add tsx and treesitter
      vim.list_extend(opts.ensure_installed, {
        "ruby",
      })
      opts.incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "v",
          node_incremental = "v",
          scope_incremental = false,
          node_decremental = "V",
        },
      }
    end,
  },
}
