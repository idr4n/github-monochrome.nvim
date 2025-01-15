-- This work is originally based on and modified from https://github.com/folke/tokyonight.nvim.

local blend_bg = require("github-monochrome.util").blend_bg

local M = {}

---@param colors ColorScheme
---@param style "light"|"dark"
local function on_colors(colors, style)
  local ret = {
    bg_statusline = blend_bg(colors.fg, 0.05),
    bg_b = blend_bg(colors.fg, 0.15),
    normal = {
      bg_a = colors.blue,
    },
  }

  if style == "light" then
    ret.normal.bg_a = "#000000"
  end

  return ret
end

---@param opts? gm.Config
function M.get(opts)
  local colors, config = require("github-monochrome.colors").setup(opts and { style = opts.style })

  local lc = on_colors(colors, config.style)

  local hl = {}

  hl.normal = {
    a = { bg = lc.normal.bg_a, fg = lc.bg_b },
    b = { bg = lc.bg_b, fg = lc.normal.bg_a },
    c = { bg = lc.bg_statusline, fg = colors.text_muted },
  }

  hl.insert = {
    a = { bg = colors.purple, fg = lc.bg_b },
    b = { bg = lc.bg_b, fg = colors.purple },
    c = { bg = lc.bg_statusline, fg = colors.text_muted },
  }

  hl.command = {
    a = { bg = colors.yellow, fg = lc.bg_b },
    b = { bg = lc.bg_b, fg = colors.yellow },
    c = { bg = lc.bg_statusline, fg = colors.text_muted },
  }

  hl.visual = {
    a = { bg = colors.magenta, fg = lc.bg_b },
    b = { bg = lc.bg_b, fg = colors.magenta },
    c = { bg = lc.bg_statusline, fg = colors.text_muted },
  }

  hl.replace = {
    a = { bg = colors.red, fg = lc.bg_b },
    b = { bg = lc.bg_b, fg = colors.red },
    c = { bg = lc.bg_statusline, fg = colors.text_muted },
  }

  hl.terminal = {
    a = { bg = colors.purple, fg = lc.bg_b },
    b = { bg = lc.bg_b, fg = colors.purple },
    c = { bg = lc.bg_statusline, fg = colors.text_muted },
  }

  hl.inactive = {
    a = { bg = lc.bg_statusline, fg = colors.blue },
    b = { bg = lc.bg_statusline, fg = colors.fg_gutter, gui = "bold" },
    c = { bg = lc.bg_statusline, fg = colors.fg_gutter },
  }

  for _, mode in pairs(hl) do
    if config.lualine_bold.a then
      mode.a.gui = "bold"
    end
    if config.lualine_bold.b then
      mode.b.gui = "bold"
    end
    if config.lualine_bold.c then
      mode.c.gui = "bold"
    end
  end

  return hl
end

return M
