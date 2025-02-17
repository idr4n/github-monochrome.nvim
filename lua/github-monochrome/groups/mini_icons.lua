-- This work is originally based on and modified from https://github.com/folke/tokyonight.nvim.

local M = {}

M.url = "https://github.com/echasnovski/mini.icons"

---@type gm.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    MiniIconsGrey   = { fg = c.fg },
    MiniIconsPurple = { fg = c.purple },
    MiniIconsBlue   = { fg = c.blue },
    MiniIconsAzure  = { fg = c.info },
    MiniIconsCyan   = { fg = c.cyan },
    MiniIconsGreen  = { fg = c.green },
    MiniIconsYellow = { fg = c.yellow },
    MiniIconsOrange = { fg = c.orange },
    MiniIconsRed    = { fg = c.red },
  }
end

return M
