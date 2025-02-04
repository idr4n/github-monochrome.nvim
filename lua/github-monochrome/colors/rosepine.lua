---@type Palette
--stylua: ignore
local colors = {
  -- Base Colors
  bg             = "#191724",
  fg             = "#E0DEF4",
  fg_dark        = "#908CAA",
  black          = "#16141F",
  blue           = "#66AECA",
  cyan           = "#9CCFD8",
  green          = "#95B1AC",
  magenta        = "#C4A7E7",
  orange         = "#EBBCBA",
  purple         = "#9E6FD8",
  red            = "#EB6F92",
  teal           = "#31748F",
  yellow         = "#F6C177",
  terminal_black = "#21202E",

  -- Text Colors
  text_muted     = "#6E6A86",
  nontext        = "#26233A",

  -- Syntax Colors
  comment        = "#6E6A86",
  string         = "#F6C177",
  number         = "#EB6F92",

  -- UI Colors
  hint_fg        = "#67637D",
  fg_gutter      = "#524F67",
  visual         = "#332D41",

  -- Highlight Colors
  bg_dark        = "#21202E",
  bg_highlight   = "#26233A",
  highlight      = "#403D52",

  git            = {
    add          = "#31748F",
    change       = "#EBBCBA",
    delete       = "#EB6F92",
  },
}

return colors
