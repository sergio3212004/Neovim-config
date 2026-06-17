return {
  "vyfor/cord.nvim",
  lazy = false,
  build = ":Cord update",
  opts = {
    editor = {
      client = "nvchad",
    },
    display = {
      theme = "void",
      flavor = "dark", -- o "light" / "accent"
    },
  },
}
