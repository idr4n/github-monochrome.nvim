-- This work is originally based on and modified from https://github.com/folke/tokyonight.nvim.

local M = {}

M.url = "https://github.com/hrsh7th/nvim-cmp"

---@type gm.HighlightsFn
function M.get(c)
  -- stylua: ignore
  local ret = {
    CmpDocumentation       = { fg = c.fg, bg = c.bg_float },
    CmpDocumentationBorder = { fg = c.border_highlight, bg = c.bg_float },
    CmpGhostText           = { fg = c.terminal_black },
    CmpItemAbbr            = { fg = c.fg, bg = c.none },
    CmpItemAbbrDeprecated  = { fg = c.fg_gutter, bg = c.none, strikethrough = true },
    CmpItemAbbrMatch       = { fg = c.magenta, bg = c.none },
    CmpItemAbbrMatchFuzzy  = { fg = c.magenta, bg = c.none },
    CmpItemKindCodeium     = { fg = c.teal, bg = c.none },
    CmpItemKindCopilot     = { fg = c.teal, bg = c.none },
    CmpItemKindSupermaven  = { fg = c.teal, bg = c.none },
    CmpItemKindDefault     = { fg = c.fg_dark, bg = c.none },
    CmpItemKindTabNine     = { fg = c.teal, bg = c.none },
    CmpItemMenu            = { fg = c.comment, bg = c.none },
  }

  require("github-monochrome.groups.kinds").kinds(ret, "CmpItemKind%s")
  return ret
end

return M
