-- This work is originally based on and modified from https://github.com/folke/tokyonight.nvim.

local M = {}

M.url = "https://github.com/lewis6991/gitsigns.nvim"

---@type gm.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    GitSignsAdd    = { fg = c.git.add },
    GitSignsChange = { fg = c.git.change },
    GitSignsDelete = { fg = c.git.delete },
  }
end

return M
