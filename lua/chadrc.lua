-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "cyberdream",

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
    String = { italic = true, bold = true },
    ["@string"] = { italic = true, bold = true },
  },
}

M.nvdash = {
  load_on_startup = true,
  -- header = {
  --   "█████████████████████████████████████████",
  --   "█████████████▀▀▀▔▔▔▔  ▔▔▔▀▀▀▜████████████",
  --   "████████▛▀▔                 ▁ ▔▀▜████████",
  --   "██████▀▔  ▔      ▁▂▂▃▃▂▂▁   ▁▂▃▄▄▅███▜███",
  --   "████▛         ▁▅██████████▇█▀▀▀▔▔▔▜██▚▟██",
  --   "███▌          ▐██████████████▄ ▁▂▅██▎▀███",
  --   "██▊           ▔▜██████████████▆██▀▔   ▐██",
  --   "██▌            ▕▀████▛▉███████▛       ▕██",
  --   "██▋ ▂▄▅         ▔▁▃▄▅▇█▜▜▛▛▜█▛        ▐██",
  --   "███▜██▄▂▂▂▂▅▃▅▟▇▛▀▀▀▔▔▔▔▔▔▔▔▔   ▗▅    ███",
  --   "███▄████▛▀▀▀▘▔▔                     ▗████",
  --   "█████▙▂                           ▁▅█████",
  --   "███████▇▄▁                     ▁▃▆███████",
  --   "██████████▇▅▄▂▁           ▁▂▃▅▇██████████",
  --   "█████████████████▇▇▆▆▆▇▇▇████████████████",
  --   "  Powered By  eovim ",
  --   "                      ",
  -- },
}
M.ui = {
  cmp = {
    icons_left = true, -- only for non-atom styles!
    style = "atom_colored", -- default/flat_light/flat_dark/atom/atom_colored
    abbr_maxwidth = 60,
    -- for tailwind, css lsp etc
    format_colors = { lsp = true, icon = "󱓻" },
  },

  telescope = { style = "bordered" },

  statusline = {
    theme = "minimal",
    separator_style = "round",
    modules = {
      lsp = function()
        local clients = vim.lsp.get_clients { bufnr = 0 }

        if #clients == 0 then
          return ""
        end

        local names = {}

        for _, client in ipairs(clients) do
          names[#names + 1] = client.name
        end

        return " %#St_Lsp#  LSP ~ " .. table.concat(names, ", ") .. " "
      end,
    },
  },
  tabufline = {
    lazyload = false,
  },
}

return M
