-- This work is originally based on and modified from https://github.com/folke/tokyonight.nvim.

local Util = require("github-monochrome.util")

local M = {}

M.url = "https://github.com/nvim-treesitter/nvim-treesitter-context"

---@type gm.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    TreesitterContext = { bg = Util.blend_bg(c.purple, 0.1) },
  }
end

return M
