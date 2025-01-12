-- This work is originally based on and modified from https://github.com/folke/tokyonight.nvim.

local M = {}

M.url = "https://github.com/folke/which-key.nvim"

---@type gm.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    WhichKey          = { fg = c.blue },
    WhichKeyGroup     = { fg = c.fg },
    WhichKeyDesc      = { fg = c.fg },
    WhichKeySeparator = { fg = c.comment },
    WhichKeyNormal    = { bg = c.bg_sidebar },
    WhichKeyValue     = { fg = c.fg },
  }
end

return M
