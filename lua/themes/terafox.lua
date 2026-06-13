---@type Base46Table
local M = {}

M.base_30 = {
  white = "#e6eaea",
  black = "#152528",
  darker_black = "#0f1c1e",
  black2 = "#1c2d30",
  one_bg = "#293e40",
  one_bg2 = "#32494b",
  one_bg3 = "#3b5457",

  grey = "#6d7f8b",
  grey_fg = "#7c8d98",
  grey_fg2 = "#8b99a3",
  light_grey = "#a1aeb6",

  red = "#e85c51",
  baby_pink = "#cb7985",
  pink = "#ad5c7c",

  line = "#2d4f56",

  green = "#7aa4a1",
  vibrant_green = "#8eb2af",

  nord_blue = "#73a3b7",
  blue = "#5a93aa",
  seablue = "#a1cdd8",

  yellow = "#fda47f",
  sun = "#fdb292",

  purple = "#ad5c7c",
  dark_purple = "#8f4966",

  teal = "#7aa4a1",
  orange = "#ff8349",
  cyan = "#a1cdd8",

  statusline_bg = "#1c2d30",
  lightbg = "#293e40",

  pmenu_bg = "#5a93aa",
  folder_bg = "#5a93aa",
}

M.base_16 = {
  base00 = "#152528",
  base01 = "#293e40",
  base02 = "#2f3239",
  base03 = "#4e5157",
  base04 = "#6d7f8b",
  base05 = "#e6eaea",
  base06 = "#ebebeb",
  base07 = "#eeeeee",

  base08 = "#e85c51",
  base09 = "#ff8349",
  base0A = "#fda47f",
  base0B = "#7aa4a1",
  base0C = "#a1cdd8",
  base0D = "#5a93aa",
  base0E = "#ad5c7c",
  base0F = "#cb7985",
}

M.type = "dark"

M.polish_hl = {
  defaults = {
    CursorLine = { bg = "#293e40" },
    Visual = { bg = "#293e40" },
    MatchParen = {
      fg = "#ff8349",
      bold = true,
    },
  },

  treesitter = {
    ["@keyword"] = { fg = "#ad5c7c" },
    ["@string"] = { fg = "#7aa4a1" },
    ["@function"] = { fg = "#5a93aa" },
    ["@type"] = { fg = "#a1cdd8" },
  },
}

M = require("base46").override_theme(M, "terafox")

return M
