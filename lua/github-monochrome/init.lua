-- This work is originally based on and modified from https://github.com/folke/tokyonight.nvim.

local config = require("github-monochrome.config")

local M = {}

---@type {light?: "light"|"rosepine-dawn", dark?: "dark"|"solarized"|"tokyonight"|"rosepine"}
M.styles = {}

---@param opts? gm.Config
function M.load(opts)
  opts = require("github-monochrome.config").extend(opts)
  local bg = vim.o.background
  local style_bg = vim.tbl_contains(config.light_styles, opts.style) and "light" or "dark"

  local alternate_style = opts.alternate_style ~= "" and opts.alternate_style
    or (style_bg == "light" and "light" or "dark")
  local alternate_bg = vim.tbl_contains(config.light_styles, alternate_style) and "light" or "dark"

  M.styles[alternate_bg] = alternate_style
  M.styles[style_bg] = opts.style

  if bg ~= style_bg then
    if vim.g.colors_name == "github-monochrome-" .. opts.style then
      opts.style = style_bg == "light" and (M.styles.dark or "dark") or (M.styles.light or "light")
    else
      vim.o.background = style_bg
    end
  else
    vim.o.background = style_bg
  end

  return require("github-monochrome.theme").setup(opts)
end

M.setup = config.setup

return M
