---@type Base46Table
local M = {}

M.base_30 = {
  white = "#73f990",
  black = "#0f160f",
  darker_black = "#0b120b",
  black2 = "#112615",
  one_bg = "#1d4025",
  one_bg2 = "#21492a",
  one_bg3 = "#26522f",

  grey = "#3c4711",
  grey_fg = "#4f5d18",
  grey_fg2 = "#5b6b1d",
  light_grey = "#647d75",

  red = "#7f2b26",
  baby_pink = "#df8008",
  pink = "#0058df",

  line = "#21492a",

  green = "#2f7e25",
  vibrant_green = "#18e000",

  nord_blue = "#2f697f",
  blue = "#00a9df",
  seablue = "#317f76",

  yellow = "#707f23",
  sun = "#bde000",

  purple = "#47577e",
  dark_purple = "#0058df",

  teal = "#00dfc3",
  orange = "#df8008",
  cyan = "#00dfc3",

  statusline_bg = "#112615",
  lightbg = "#1d4025",

  pmenu_bg = "#18e000",
  folder_bg = "#2f697f",
}

M.base_16 = {
  base00 = "#0f160f", -- bg
  base01 = "#112615",
  base02 = "#1d4025",
  base03 = "#3c4711",
  base04 = "#647d75",
  base05 = "#637d75", -- fg
  base06 = "#73f990",
  base07 = "#ffffff",

  base08 = "#7f2b26", -- red
  base09 = "#df8008", -- orange
  base0A = "#bde000", -- yellow
  base0B = "#18e000", -- green
  base0C = "#00dfc3", -- cyan
  base0D = "#00a9df", -- blue
  base0E = "#0058df", -- purple
  base0F = "#317f76", -- teal
}

M.polish_hl = {
  defaults = {
    Comment = {
      fg = "#3c4711",
      italic = true,
    },

    CursorLine = {
      bg = "#112615",
    },

    Visual = {
      bg = "#1d4025",
      fg = "#73f990",
    },
  },

  treesitter = {
    ["@variable"] = { fg = "#637d75" },
    ["@string"] = { fg = "#18e000" },
    ["@keyword"] = { fg = "#00a9df" },
    ["@function"] = { fg = "#00dfc3" },
    ["@type"] = { fg = "#bde000" },
  },
}

M.type = "dark"

M = require("base46").override_theme(M, "greenmatrix")

return M
