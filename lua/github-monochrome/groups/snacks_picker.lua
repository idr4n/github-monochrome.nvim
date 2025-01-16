local M = {}

M.url = "https://github.com/folke/snacks.nvim/blob/main/docs/picker.md"

---@type gm.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    SnacksPickerInputTitle          = { fg = c.orange, bg = c.bg_float },
    SnacksPickerBoxTitle            = { fg = c.orange, bg = c.bg_float },
    SnacksPickerPreviewTitle        = { fg = c.orange, bg = c.bg_float },
    SnacksPickerListCursorLine      = { bg = c.bg_highlight },
    SnacksPickerPreviewCursorLine   = { bg = c.visual },
    SnacksPickerSelected            = { fg = c.magenta},
    SnacksPickerDir                 = { fg = c.hint_fg },
    SnacksPickerFile                = { fg = c.fg },
    SnacksPickerMatch               = { fg = c.magenta, bold = true },
    SnacksPickerTotals              = { fg = c.hint_fg },
  }
end

return M
