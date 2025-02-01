---@type Palette
--stylua: ignore
local colors = {
  -- Base Colors
  bg             = "#1A1B26",
  fg             = "#C8D3F5",
  fg_dark        = "#8A92B2",
  black          = "#0C0E14",
  blue           = "#7AA2F7",
  cyan           = "#7DCFFF",
  green          = "#9ECE6A",
  magenta        = "#BB9AF7",
  orange         = "#FF9E64",
  purple         = "#9D7CD8",
  red            = "#F7768E",
  teal           = "#1ABC9C",
  yellow         = "#E0AF68",
  terminal_black = "#414868",

  -- Text Colors
  text_muted     = "#545D86",
  nontext        = "#292E42",

  -- Syntax Colors
  comment        = "#565F89",
  string         = "#9ECE6A",
  number         = "#F7768E",

  -- UI Colors
  hint_fg        = "#464D52",
  fg_gutter      = "#3B4261",
  visual         = "#403C7A",

  -- Highlight Colors
  bg_dark        = "#16161E",
  bg_highlight   = "#232839",
  highlight      = "#3B4261",

  git            = {
    add          = "#449DAB",
    change       = "#6183BB",
    delete       = "#914C54",
  },
}

return colors
