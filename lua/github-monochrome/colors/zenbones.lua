---@type Palette
--stylua: ignore
local colors = {
  -- Base Colors
  bg             = "#1B1917",
  fg             = "#B4BDC3",
  fg_dark        = "#867A74",
  black          = "#403833",
  blue           = "#6099C0",
  cyan           = "#66A5AE",
  green          = "#819B69",
  magenta        = "#B278A7",
  orange         = "#DE825E",
  purple         = "#AB76E5",
  red            = "#DE6E7C",
  teal           = "#05ADE2",
  yellow         = "#B87E64",
  terminal_black = "#403833",

  -- Text Colors
  text_muted     = "#797F84",
  nontext        = "#2B2725",

  -- Syntax Colors
  comment        = "#6E6764",
  string         = "#868C90",
  number         = "#DE6E7C",

  -- UI Colors
  hint_fg        = "#5B5350",
  fg_gutter      = "#494745",
  visual         = "#3E4042",

  -- Highlight Colors
  bg_dark        = "#171210",
  bg_highlight   = "#25211F",
  highlight      = "#2B2725",

  git            = {
    add          = "#819B69",
    change       = "#6099C0",
    delete       = "#DE6E7C",
  },
}

return colors
