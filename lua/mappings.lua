require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set
local which_key = require "which-key"

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "<C-t>", function()
  require("nvchad.themes").open { style = "flat" }
end, {})
map("n", "<S-t>", "<cmd>FloatermToggle<cr>", {})

which_key.add {
  { "<leader>g", desc = "Lazygit" },
}

map("n", "<leader>gg", function()
  ---@param opts? snacks.lazygit.Config
  Snacks.lazygit.open(opts)
end, { desc = "Open Lazygit" })
map("n", "<leader>gl", function()
  Snacks.lazygit.log()
end, { desc = "Lazygit log" })
map("n", "<leader>gf", function()
  ---@param opts? snacks.lazygit.Config|{}
  Snacks.lazygit.log_file(opts)
end, { desc = "Lazygit log file" })
