return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {
    sync_root_with_cwd = true,
    respect_buf_cwd = true,

    modified = {
      enable = true,
      show_on_dirs = true,
      show_on_open_dirs = true,
    },

    renderer = {
      highlight_modified = "name",

      icons = {
        show = {
          modified = true,
        },
      },
    },
  },
}
