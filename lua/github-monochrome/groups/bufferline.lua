local M = {}

M.url = "https://github.com/akinsho/bufferline.nvim"

---@type gm.HighlightsFn
function M.get(c, opts)
  return {
    BufferLineIndicatorSelected = { fg = c.yellow, bg = opts.transparent and c.none or c.bg },
  }
end

return M
