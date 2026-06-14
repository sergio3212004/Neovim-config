---@type Base46Table
local M = {}

M.base_30 = {
  white = "#ffffff",
  black = "#16181a",
  darker_black = "#101214",
  black2 = "#1d2023",
  one_bg = "#25292d",
  one_bg2 = "#2e3338",
  one_bg3 = "#373d43",

  grey = "#3c4048",
  grey_fg = "#545a63",
  grey_fg2 = "#666d77",
  light_grey = "#7b8390",

  red = "#ff6e5e",
  baby_pink = "#ff8f84",
  pink = "#ff6ec7",

  line = "#2e3338",

  green = "#5eff6c",
  vibrant_green = "#7fff89",

  nord_blue = "#78b4ff",
  blue = "#5ea1ff",
  seablue = "#5ef1ff",

  yellow = "#f1ff5e",
  sun = "#ffbd5e",

  purple = "#bd5eff",
  dark_purple = "#9f4dff",

  teal = "#5ef1ff",
  orange = "#ffbd5e",
  cyan = "#5ef1ff",

  statusline_bg = "#1d2023",
  lightbg = "#25292d",

  pmenu_bg = "#5ea1ff",
  folder_bg = "#5ea1ff",
}

M.base_16 = {
  base00 = "#16181a",
  base01 = "#1d2023",
  base02 = "#25292d",
  base03 = "#3c4048",
  base04 = "#666d77",
  base05 = "#ffffff",
  base06 = "#ffffff",
  base07 = "#ffffff",

  base08 = "#ff6e5e",
  base09 = "#ffbd5e",
  base0A = "#f1ff5e",
  base0B = "#5eff6c",
  base0C = "#5ef1ff",
  base0D = "#5ea1ff",
  base0E = "#bd5eff",
  base0F = "#ff8f84",
}

M.polish_hl = {
  defaults = {
    CursorLine = {
      bg = "#1d2023",
    },

    ColorColumn = {
      bg = "#1d2023",
    },

    Visual = {
      bg = "#3c4048",
    },

    Comment = {
      fg = "#666d77",
      italic = true,
    },
  },

  treesitter = {
    ["@variable"] = { fg = "#ffffff" },
    ["@property"] = { fg = "#5ef1ff" },
    ["@field"] = { fg = "#5ef1ff" },
    ["@function"] = { fg = "#5ea1ff" },
    ["@keyword"] = { fg = "#bd5eff" },
    ["@string"] = { fg = "#5eff6c" },
    ["@number"] = { fg = "#ffbd5e" },
  },
}

M.type = "dark"

M = require("base46").override_theme(M, "cyberdream")

return M
