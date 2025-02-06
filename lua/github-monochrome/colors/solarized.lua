---@type Palette
--stylua: ignore
local colors = {
  -- Base Colors
  bg             = "#002B36",
  fg             = "#839496",
  fg_dark        = "#657B83",
  black          = "#002731",
  blue           = "#268BD2",
  cyan           = "#2AA198",
  green          = "#859900",
  magenta        = "#D33682",
  orange         = "#CB4B16",
  purple         = "#6C71C4",
  red            = "#DC322F",
  teal           = "#2AA198",
  yellow         = "#B58900",
  terminal_black = "#073642",

  -- Text Colors
  text_muted     = "#586E75",
  nontext        = "#133741",

  -- Syntax Colors
  comment        = "#586E75",
  string         = "#859900",
  number         = "#DC322F",

  -- UI Colors
  hint_fg        = "#46585E",
  fg_gutter      = "#586E75",
  visual         = "#3F2E4C",

  -- Highlight Colors
  bg_dark        = "#002731",
  bg_highlight   = "#073642",
  highlight      = "#254850",

  git            = {
    add          = "#487E02",
    change       = "#1B81A8",
    delete       = "#F14C4C",
  },
}

return colors
