---@type Palette
--stylua: ignore
local colors = {
  -- Base Colors
  bg             = "#FAF4ED",
  fg             = "#575279",
  fg_dark        = "#908CAA",
  black          = "#1F252D",
  blue           = "#0350AE",
  cyan           = "#56949F",
  green          = "#6D8F89",
  magenta        = "#907AA9",
  orange         = "#D7827E",
  purple         = "#7D649B",
  red            = "#B4637A",
  teal           = "#286983",
  yellow         = "#EA9D34",
  terminal_black = "#55667B",

  -- Text Colors
  text_muted     = "#9893A5",
  nontext        = "#F2E9E1",

  -- Syntax Colors
  comment        = "#9893A5",
  string         = "#6D8F89",
  number         = "#B4637A",

  -- UI Colors
  hint_fg        = "#67637D",
  fg_gutter      = "#CECACD",
  visual         = "#EBE2E3",

  -- Highlight Colors
  bg_dark        = "#F4EDE8",
  bg_highlight   = "#F2E9E1",
  highlight      = "#DFDAD9",

  git            = {
    add          = "#286983",
    change       = "#D7827E",
    delete       = "#B4637A",
  },
}

return colors
