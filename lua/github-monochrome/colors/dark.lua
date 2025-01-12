---@type Palette
--stylua: ignore
local colors = {
  -- Base Colors
  bg             = "#0D1117",
  fg             = "#C8D3F5",
  fg_dark        = "#8A92B2",
  black          = "#2A384B",
  blue           = "#79C0FF",
  cyan           = "#78DCE8",
  green          = "#9ECE6A",
  magenta        = "#B691FA",
  orange         = "#FF966C",
  purple         = "#AB76F7",
  red            = "#FF7B72",
  teal           = "#05c3e2",
  yellow         = "#F5B600",
  terminal_black = "#3E526F",

  -- Text Colors
  text_muted     = "#676E86",
  nontext        = "#2F343B",

  -- Syntax Colors
  comment        = "#6A717C",
  string         = "#79C0FF",
  number         = "#FF7B72",

  -- UI Colors
  hint_fg        = "#464D52",
  fg_gutter      = "#3D4247",
  visual         = "#2D465D",

  -- Highlight Colors
  bg_dark        = "#000000",
  bg_highlight   = "#1A1F27",
  highlight      = "#313643",

  git            = {
    add          = "#3fb950",
    change       = "#FFA657",
    delete       = "#F85149",
  },
}

return colors
