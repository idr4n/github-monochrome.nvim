local Util = require("github-monochrome.util")

local M = {}

---@type gm.HighlightsFn
function M.get(c)
  -- stylua: ignore
  return {
    netrwDir          = { fg = c.blue, bold = true },
    netrwClassify     = { fg = c.blue, bold = true }, -- end characters like / and @
    netrwSymLink      = { fg = c.orange, bold = true },
    netrwExe          = { fg = c.red },
    netrwTreeBar      = { fg = c.magenta },
    netrwCompress     = { fg = c.cyan },
    netrwBak          = { fg = c.blue },
    netrwSpecial      = { fg = c.orange },
    netrwMarkFile     = { bg = Util.blend_bg(c.purple, 0.2), fg = c.purple, bold = true },
  }
end

return M
