---@type Base46Table
local M = {}

M.base_30 = {
  white = "#ffffff",

  black = "#0d0f31",
  darker_black = "#080a24",
  black2 = "#14173d",

  one_bg = "#1a1d4a",
  one_bg2 = "#23275c",
  one_bg3 = "#2d316e",

  grey = "#5b5e86",
  grey_fg = "#72759a",
  grey_fg2 = "#878ab0",
  light_grey = "#a5a8cc",

  red = "#ff16b0",
  baby_pink = "#ff5cc8",
  pink = "#f806fa",

  line = "#20244f",

  green = "#b3f361",
  vibrant_green = "#c5ff7f",

  nord_blue = "#6be4e6",
  blue = "#46bdff",
  seablue = "#59e1e3",

  yellow = "#ffea16",
  sun = "#fff066",

  purple = "#f806fa",
  dark_purple = "#c505c7",

  teal = "#59e1e3",
  orange = "#ff7a1f",
  cyan = "#6be4e6",

  statusline_bg = "#0a0c27",
  lightbg = "#1a1d4a",

  pmenu_bg = "#00d5eb",
  folder_bg = "#46bdff",
}

M.base_16 = {
  base00 = "#0d0f31",
  base01 = "#14173d",
  base02 = "#1a1d4a",
  base03 = "#5b5e86",

  base04 = "#878ab0",
  base05 = "#ffffff",
  base06 = "#feffff",
  base07 = "#ffffff",

  base08 = "#ff16b0",
  base09 = "#ff7a1f",
  base0A = "#ffea16",
  base0B = "#b3f361",
  base0C = "#59e1e3",
  base0D = "#46bdff",
  base0E = "#f806fa",
  base0F = "#00d5eb",
}

M.polish_hl = {
  defaults = {
    CursorLine = {
      bg = "#14173d",
    },

    Visual = {
      bg = "#00d5eb",
      fg = "#000000",
    },

    MatchParen = {
      fg = "#ffea16",
      bold = true,
    },
  },

  treesitter = {
    ["@keyword"] = { fg = "#f806fa" },
    ["@string"] = { fg = "#b3f361" },
    ["@function"] = { fg = "#46bdff" },
    ["@type"] = { fg = "#6be4e6" },
    ["@number"] = { fg = "#ffea16" },
  },
}

M.type = "dark"

M = require("base46").override_theme(M, "1984")

return M
