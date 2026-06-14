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

-- Lazygit

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

-- Gh CLI

which_key.add {
  { "<leader>G", desc = "Github_CLI" },
}

map("n", "<leader>Gi", function()
  Snacks.picker.gh_issue()
end, { desc = "Browse open issues" })

map("n", "<leader>GI", function()
  Snacks.picker.gh_issue { state = "all" }
end, { desc = "Browse all issues" })

map("n", "<leader>Gp", function()
  Snacks.picker.gh_pr()
end, { desc = "Browse open pull request" })

map("n", "<leader>GP", function()
  Snacks.picker.gh_pr { state = "all" }
end, { desc = "Browse all pull request" })

map("n", "<leader>Gd", function()
  Snacks.picker.gh_diff { pr = 123 }
end, { desc = "View PR diff" })

map("n", "<leader>Gb", function()
  Snacks.gh.open { type = "issue", number = 123, repo = "owner/repo" }
end, { desc = "Open issue/PR in buffer" })

-- Showkeys
map("n", "<localleader>s", "<cmd>ShowkeysToggle<cr>", { desc = "ShowKeysToggle" })
