local M = {}

M.url = "https://github.com/nvim-mini/mini.indentscope"

---@type gm.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    MiniIndentscopeSymbol = { fg = c.magenta },
  }
end

return M
