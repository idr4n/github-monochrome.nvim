local M = {}

M.url = "https://github.com/dnlhc/glance.nvim"

---@type gm.HighlightsFn
function M.get(c)
  local border = c.border_highlight

  -- stylua: ignore
  local ret = {
    GlancePreviewNormal       = { fg = c.fg, bg = c.bg },
    GlancePreviewBorderBottom = { fg = border, bg = c.bg },
    GlancePreviewEndOfBuffer  = { fg = c.fg, bg = c.bg },
    GlanceListNormal          = { fg = c.fg, bg = c.bg_highlight },
    GlanceListFilename        = { fg = c.fg, bg = c.bg_highlight },
    GlanceListFilepath        = { fg = c.fg, bg = c.bg_highlight },
    GlanceListEndOfBuffer     = { fg = c.fg, bg = c.bg_highlight },
    GlanceListBorderBottom    = { fg = border, bg = c.bg },
    GlanceBorderTop           = { fg = border, bg = c.bg },
    GlanceWinBarFilename      = { fg = c.magenta, bg = c.bg },
    GlanceWinBarFilepath      = { fg = c.text_muted, bg = c.bg },
    GlanceWinBarTitle         = { fg = c.magenta, bg = c.bg_highlight },
  }

  return ret
end

return M
