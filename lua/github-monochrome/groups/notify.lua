-- This work is originally based on and modified from https://github.com/folke/tokyonight.nvim.

local M = {}

M.url = "https://github.com/rcarriga/nvim-notify"

---@type gm.HighlightsFn
function M.get(c)
  --stylua: ignore
  return {
    NotifyBackground = { fg = c.fg, bg = c.bg },
    NotifyINFOIcon   = { fg = c.info },
    NotifyINFOTitle  = { fg = c.info },
  }
end

return M
