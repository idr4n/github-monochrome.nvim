local M = {}

M.url = "https://github.com/folke/snacks.nvim/blob/main/docs/indent.md"

---@type gm.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    SnacksIndent          = { fg = c.highlight, nocombine = true },
    SnacksIndentScope     = { fg = c.magenta, nocombine = true },
  }
end

return M
