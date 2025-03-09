-- This work is originally based on and modified from https://github.com/folke/tokyonight.nvim.

local Util = require("github-monochrome.util")

local M = {}

M.url = "https://github.com/nvim-treesitter/nvim-treesitter-context"

---@type gm.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    TreesitterContext         = { bg = opts.transparent and c.none or Util.blend_bg(c.purple, 0.1) },
    TreesitterContextBottom   = { bg = c.none, underline = opts.transparent,  sp = c.magenta },
  }
end

return M
