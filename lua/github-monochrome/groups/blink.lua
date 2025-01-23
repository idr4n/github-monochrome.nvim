local M = {}

M.url = "https://github.com/saghen/blink.cmp"

---@type gm.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    BlinkCmpMenu               = { fg = c.fg, bg = c.bg_float },
    BlinkCmpMenuBorder         = "FloatBorder",
    BlinkCmpDoc                = { fg = c.fg, bg = c.bg_float },
    BlinkCmpDocBorder          = "FloatBorder",
    BlinkCmpMenuSelection      = { bg = c.bg_highlight },
    BlinkCmpLabelDetail        = { fg = c.comment },
    BlinkCmpLabelDescription   = { fg = c.comment },
  }
end

return M
