return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    bigfile = { enabled = true },
    -- dashboard = { enabled = true },
    -- explorer = { enabled = true },
    -- indent = { enabled = true },
    lazygit = { enabled = true },
    gh = { enabled = true },
    input = { enabled = true },
    picker = {
      enabled = true,
      gh_issue = {
        -- your gh_issue picker configuration comes here
        -- or leave it empty to use the default settings
      },
      gh_pr = {
        -- your gh_pr picker configuration comes here
        -- or leave it empty to use the default settings
      },
    },
    notifier = { enabled = true },
    quickfile = { enabled = true },
    scope = { enabled = true },
    scroll = { enabled = true },
    statuscolumn = { enabled = true },
    words = { enabled = true },
  },
}
