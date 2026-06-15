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

-- Vimtex
which_key.add {
  { "<localleader>l", desc = "vimtex" },
}
map("n", "<localleader>la", "<cmd>VimtexContextMenu<CR>", { desc = "VimTeX Context Menu" })
map("n", "<localleader>lC", "<cmd>VimtexClean!<CR>", { desc = "VimTeX Full Clean" })
map("n", "<localleader>lc", "<cmd>VimtexClean<CR>", { desc = "VimTeX Clean" })
map("n", "<localleader>le", "<cmd>VimtexErrors<CR>", { desc = "VimTeX Show Errors" })
map("n", "<localleader>lG", "<cmd>VimtexStatusAll<CR>", { desc = "VimTeX Status All" })
map("n", "<localleader>lg", "<cmd>VimtexStatus<CR>", { desc = "VimTeX Status" })
map("n", "<localleader>li", "<cmd>VimtexInfo<CR>", { desc = "VimTeX Info" })
map("n", "<localleader>lI", "<cmd>VimtexInfoFull<CR>", { desc = "VimTeX Full Info" })
map("n", "<localleader>lk", "<cmd>VimtexStop<CR>", { desc = "VimTeX Stop" })
map("n", "<localleader>lK", "<cmd>VimtexStopAll<CR>", { desc = "VimTeX Stop All" })
map("n", "<localleader>ll", "<cmd>VimtexCompile<CR>", { desc = "VimTeX Compile" })
map("n", "<localleader>lL", "<cmd>VimtexCompileSelected<CR>", { desc = "VimTeX Compile Selection" })
map("n", "<localleader>lm", "<cmd>VimtexImapsList<CR>", { desc = "VimTeX Show Imaps" })
map("n", "<localleader>lo", "<cmd>VimtexCompileOutput<CR>", { desc = "VimTeX Compiler Output" })
map("n", "<localleader>lq", "<cmd>VimtexLog<CR>", { desc = "VimTeX Log" })
map("n", "<localleader>ls", "<cmd>VimtexToggleMain<CR>", { desc = "VimTeX Toggle Main" })
map("n", "<localleader>lt", "<cmd>VimtexTocOpen<CR>", { desc = "VimTeX TOC" })
map("n", "<localleader>lT", "<cmd>VimtexTocToggle<CR>", { desc = "VimTeX Toggle TOC" })
map("n", "<localleader>lv", "<cmd>VimtexView<CR>", { desc = "VimTeX View PDF" })
map("n", "<localleader>lX", "<cmd>VimtexReloadState<CR>", { desc = "VimTeX Reload State" })
map("n", "<localleader>lx", "<cmd>VimtexReload<CR>", { desc = "VimTeX Reload" })
