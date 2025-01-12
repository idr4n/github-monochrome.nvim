-- This work is originally based on and modified from https://github.com/folke/tokyonight.nvim.

local M = {}

---@param opts gm.Config
function M.setup(opts)
  opts = require("github-monochrome.config").extend(opts)

  local colors = require("github-monochrome.colors").setup(opts)
  local groups = require("github-monochrome.groups").setup(colors, opts)

  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "github-monochrome-" .. opts.style

  for group, hl in pairs(groups) do
    hl = type(hl) == "string" and { link = hl } or hl
    vim.api.nvim_set_hl(0, group, hl)
  end

  if opts.terminal_colors then
    M.terminal(colors)
  end

  return colors, groups, opts
end

---@param colors ColorScheme
function M.terminal(colors)
  -- dark
  vim.g.terminal_color_0 = colors.terminal.black
  vim.g.terminal_color_8 = colors.terminal.black_bright

  -- light
  vim.g.terminal_color_7 = colors.terminal.white
  vim.g.terminal_color_15 = colors.terminal.white_bright

  -- colors
  vim.g.terminal_color_1 = colors.terminal.red
  vim.g.terminal_color_9 = colors.terminal.red_bright

  vim.g.terminal_color_2 = colors.terminal.green
  vim.g.terminal_color_10 = colors.terminal.green_bright

  vim.g.terminal_color_3 = colors.terminal.yellow
  vim.g.terminal_color_11 = colors.terminal.yellow_bright

  vim.g.terminal_color_4 = colors.terminal.blue
  vim.g.terminal_color_12 = colors.terminal.blue_bright

  vim.g.terminal_color_5 = colors.terminal.magenta
  vim.g.terminal_color_13 = colors.terminal.magenta_bright

  vim.g.terminal_color_6 = colors.terminal.cyan
  vim.g.terminal_color_14 = colors.terminal.cyan_bright
end

return M