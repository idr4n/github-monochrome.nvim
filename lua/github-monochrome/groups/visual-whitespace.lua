local M = {}

M.url = "https://github.com/mcauley-penney/visual-whitespace.nvim"

---@type gm.HighlightsFn
function M.get(c)
  return {
    VisualNonText = { fg = c.comment, bg = c.visual },
  }
end

return M
