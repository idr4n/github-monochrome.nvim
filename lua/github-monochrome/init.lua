-- This work is originally based on and modified from https://github.com/folke/tokyonight.nvim.

local config = require("github-monochrome.config")

local M = {}

---@param opts? gm.Config
function M.load(opts)
  opts = require("github-monochrome.config").extend(opts)
  local style_bg = vim.tbl_contains(config.light_styles, opts.style) and "light" or "dark"

  vim.o.background = style_bg
  return require("github-monochrome.theme").setup(opts)
end

M.setup = config.setup

return M
