-- This work is originally based on and modified from https://github.com/folke/tokyonight.nvim.

local M = {}

M.url = "https://github.com/echasnovski/mini.tabline"

---@type gm.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    MiniTablineCurrent         = { fg = c.fg, bold = true, bg = c.bg },
    MiniTablineFill            = { bg = c.bg_highlight },
    MiniTablineHidden          = { fg = c.text_muted, bg = c.bg_highlight },
    MiniTablineModifiedCurrent = { fg = c.red, bold = true, bg = c.bg },
    MiniTablineModifiedHidden  = { bg = c.bg_highlight, fg = c.red, bold = true, },
    MiniTablineModifiedVisible = { fg = c.red, bg = c.bg_dark },
    MiniTablineTabpagesection  = { bg = c.bg_dark, fg = c.none },
    MiniTablineVisible         = { fg = c.magenta, bg = c.bg_dark },
  }
end

return M
