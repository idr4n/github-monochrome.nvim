-- This work is originally based on and modified from https://github.com/folke/tokyonight.nvim.

local Util = require("github-monochrome.util")

local M = {}

---@type table<string, Palette|fun(opts:gm.Config):Palette>
M.styles = setmetatable({}, {
  __index = function(_, style)
    return vim.deepcopy(Util.mod("github-monochrome.colors." .. style))
  end,
})

---@param opts? gm.Config
function M.setup(opts)
  opts = require("github-monochrome.config").extend(opts)

  local palette = M.styles[opts.style]

  -- Color Palette
  ---@class ColorScheme: Palette
  local colors = palette

  Util.bg = colors.bg
  Util.fg = colors.fg

  colors.none = "NONE"

  colors.diff = {
    add = Util.blend_bg(colors.green, 0.15),
    delete = Util.blend_bg(colors.red, 0.15),
    change = Util.blend_bg(colors.blue, 0.15),
    text = Util.blend_bg(colors.blue, 0.3),
  }

  colors.git.ignore = colors.text_muted
  colors.border_highlight = Util.blend_bg(colors.blue, 0.8)
  colors.border = colors.black
  colors.bg_popup = colors.bg
  colors.bg_statusline = colors.bg

  -- Sidebar and Floats are configurable
  colors.bg_sidebar = opts.styles.sidebars == "transparent" and colors.none
    or opts.styles.sidebars == "dark" and colors.bg_dark
    or colors.bg

  colors.bg_float = opts.styles.floats == "transparent" and colors.none
    or opts.styles.floats == "dark" and colors.bg_dark
    or colors.bg

  colors.bg_visual = colors.visual
  colors.bg_search = Util.blend_bg(colors.blue, 0.4)
  colors.fg_search = colors.fg
  colors.fg_sidebar = Util.blend_bg(colors.fg, 0.7)
  colors.fg_float = colors.fg
  colors.match_paren_bg = opts.style == "zenbones" and Util.blend_bg(colors.magenta, 0.4)
    or Util.blend_bg(colors.blue, 0.3)
  colors.match_paren_fg = opts.style == "zenbones" and colors.fg or Util.blend_bg(colors.blue, 0.8)

  colors.error = colors.red
  colors.todo = colors.blue
  colors.warning = colors.yellow
  colors.info = colors.blue
  colors.hint = colors.teal

  colors.rainbow = {
    colors.blue,
    colors.green,
    colors.purple,
    colors.yellow,
    colors.teal,
    colors.magenta,
    colors.orange,
    colors.red,
  }

  -- stylua: ignore
  --- @class TerminalColors
  colors.terminal = {
    black          = colors.black,
    black_bright   = colors.terminal_black,
    red            = colors.red,
    red_bright     = Util.brighten(colors.red),
    green          = colors.green,
    green_bright   = Util.brighten(colors.green),
    yellow         = colors.yellow,
    yellow_bright  = Util.brighten(colors.yellow),
    blue           = colors.blue,
    blue_bright    = Util.brighten(colors.blue),
    magenta        = colors.magenta,
    magenta_bright = Util.brighten(colors.magenta),
    cyan           = colors.cyan,
    cyan_bright    = Util.brighten(colors.cyan),
    white          = colors.fg_dark,
    white_bright   = colors.fg,
  }

  opts.on_colors(colors, opts.style)

  return colors, opts
end

return M
