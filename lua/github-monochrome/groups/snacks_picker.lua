local M = {}

M.url = "https://github.com/folke/snacks.nvim/blob/main/docs/picker.md"

---@type gm.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    SnacksPickerInputTitle          = { fg = c.orange, bold = true, bg = c.bg_float },
    SnacksPickerBoxTitle            = { fg = c.orange, bold = true, bg = c.bg_float },
    SnacksPickerPreviewTitle        = { fg = c.orange, bold = true, bg = c.bg_float },
    SnacksPickerListCursorLine      = { bg = c.bg_highlight },
    SnacksPickerPreviewCursorLine   = { bg = c.visual },
    SnacksPickerSelected            = { fg = c.magenta},
    SnacksPickerDir                 = { fg = c.fg },
    SnacksPickerFile                = { fg = c.fg, bold = true },
    SnacksPickerMatch               = { fg = c.magenta, bold = true },
  }
end

return M
