---@class Palette
--stylua: ignore
local colors = {
  -- Base Colors
  bg             = "#FFFFFF",
  fg             = "#2B343F",
  fg_dark        = "#70818F",
  black          = "#1F252D",
  blue           = "#0350AE",
  cyan           = "#04BABA",
  green          = "#0C9671",
  magenta        = "#A268F6",
  orange         = "#FF966C",
  purple         = "#7042C5",
  red            = "#D73A49",
  teal           = "#069494",
  yellow         = "#C48200",
  terminal_black = "#55667B",

  -- Text Colors
  text_muted     = "#6A737D",
  nontext        = "#EDEEF0",

  -- Syntax Colors
  comment        = "#A4AAAF",
  string         = "#0C9671",
  number         = "#D73A49",

  -- UI Colors
  hint_fg        = "#969696",
  fg_gutter      = "#BABBBD",
  visual         = "#DBE7F4",

  -- Highlight Colors
  bg_dark        = "#FAFCFF",
  bg_highlight   = "#F4F6FC",
  highlight      = "#EBEBEB",

  git            = {
    add          = "#28A745",
    change       = "#FB8F44",
    delete       = "#D73A49",
  },
}

return colors
