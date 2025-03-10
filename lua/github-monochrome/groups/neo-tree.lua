-- This work is originally based on and modified from https://github.com/folke/tokyonight.nvim.

local Util = require("github-monochrome.util")

local M = {}

M.url = "https://github.com/nvim-neo-tree/neo-tree.nvim"

---@type gm.HighlightsFn
function M.get(c, opts)
  local dark = opts.styles.sidebars == "transparent" and c.none
    or Util.blend(c.bg_sidebar, 0.8, opts.style == "light" and c.blue or "#000000")
  -- stylua: ignore
  return {
    NeoTreeDimText              = { fg = c.fg_gutter },
    NeoTreeFileName             = { fg = c.fg_sidebar },
    NeoTreeDirectoryIcon        = { fg = c.blue },
    NeoTreeGitModified          = { fg = c.orange },
    NeoTreeGitStaged            = { fg = c.green },
    NeoTreeGitUntracked         = { fg = c.magenta },
    NeoTreeNormal               = { fg = c.fg_sidebar, bg = c.bg_sidebar },
    NeoTreeNormalNC             = { fg = c.fg_sidebar, bg = c.bg_sidebar },
    NeoTreeTabActive            = { fg = c.blue, bg = c.bg_dark, bold = true },
    NeoTreeTabInactive          = { fg = c.text_muted, bg = dark },
    NeoTreeTabSeparatorActive   = { fg = c.blue, bg = c.bg_dark },
    NeoTreeTabSeparatorInactive = { fg = c.bg, bg = dark },
    NeoTreeCursorLine           = { bg = opts.styles.sidebars == "transparent" and c.visual or c.bg_highlight },
    NeoTreeWinSeparator         = { fg = opts.styles.sidebars == "dark" and c.bg or c.border, bg = opts.styles.sidebars == "transparent" and c.none or c.bg },
  }
end

return M
