local Util = require("github-monochrome.util")

local M = {}

vim.g.netrw_special_syntax = true

---@type gm.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    netrwDir          = { fg = c.blue, bold = true },
    netrwClassify     = { fg = c.blue, bold = true }, -- end characters like / and @
    netrwSymLink      = { fg = c.orange, bold = true },
    netrwLink         = { fg = c.blue, bold = true },
    netrwExe          = { fg = c.red },
    netrwTreeBar      = { fg = c.magenta },
    netrwSpecial      = { fg = c.orange },
    netrwMarkFile     = { bg = Util.blend_bg(c.purple, 0.2), fg = c.purple, bold = true },
    -- Special syntax
    netrwBak          = { fg = c.blue },
    netrwCompress     = { fg = c.cyan },
    netrwData         = { fg = c.red },
    netrwDoc          = { fg = c.green },
    netrwHdr          = { fg = c.cyan },
    netrwLib          = { fg = c.cyan },
    netrwMakefile     = { fg = c.red },
    netrwObj          = { fg = c.yellow },
    netrwPix          = { fg = c.orange },
    netrwTmp          = { fg = c.fg_dark },
  }
end

return M
