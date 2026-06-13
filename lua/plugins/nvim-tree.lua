return {
  "nvim-tree/nvim-tree.lua",
  opts = {
    renderer = {
      icons = {
        show = {
          modified = true,
        },

        glyphs = {
          modified = "●",
        },
      },
    },

    modified = {
      enable = true,
    },
  },
}
