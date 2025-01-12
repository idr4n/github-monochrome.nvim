-- This work is originally based on and modified from https://github.com/folke/tokyonight.nvim.

local M = {}

M.url = "https://github.com/RRethy/vim-illuminate"

---@type gm.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    IlluminatedWordRead  = { bg = c.highlight },
    IlluminatedWordText  = { bg = c.highlight },
    IlluminatedWordWrite = { bg = c.highlight },
    illuminatedCurWord   = { bg = c.highlight },
    illuminatedWord      = { bg = c.highlight },
  }
end

return M
