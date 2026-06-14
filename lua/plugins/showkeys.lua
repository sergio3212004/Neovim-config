return {
  "nvzone/showkeys",
  event = "VeryLazy",

  opts = {
    timeout = 1,
    maxkeys = 5,
    position = "bottom-center",
  },

  config = function(_, opts)
    require("showkeys").setup(opts)

    vim.schedule(function()
      vim.cmd "ShowkeysToggle"
    end)
  end,
}
