-- This work is originally based on and modified from https://github.com/folke/tokyonight.nvim.

local M = {}

M.url = "https://github.com/lukas-reineke/indent-blankline.nvim"

---@type gm.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    IndentBlanklineChar        = { fg = c.highlight, nocombine = true },
    IndentBlanklineContextChar = { fg = c.magenta, nocombine = true },
    IblIndent                  = { fg = c.highlight, nocombine = true },
    IblScope                   = { fg = c.magenta, nocombine = true },
  }
end

return M
