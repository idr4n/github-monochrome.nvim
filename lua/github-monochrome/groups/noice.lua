-- This work is originally based on and modified from https://github.com/folke/tokyonight.nvim.

local M = {}

M.url = "https://github.com/folke/noice.nvim"

---@type gm.HighlightsFn
function M.get(c)
  -- stylua: ignore
  local ret = {
    NoiceCmdlineIconInput          = { fg = c.fg },
    NoiceCmdlineIconLua            = { fg = c.blue },
    NoiceCmdlinePopupBorderInput   = { fg = c.yellow },
    NoiceCmdlinePopupBorderLua     = { fg = c.blue },
    NoiceCmdlinePopupTitleInput    = { fg = c.yellow },
    NoiceCmdlinePopupTitleLua      = { fg = c.blue },
    NoiceCompletionItemKindDefault = { fg = c.fg_dark, bg = c.none },
  }
  require("github-monochrome.groups.kinds").kinds(ret, "NoiceCompletionItemKind%s")
  return ret
end

return M
