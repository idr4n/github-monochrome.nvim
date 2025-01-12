-- This work is originally based on and modified from https://github.com/folke/tokyonight.nvim.

local Util = require("github-monochrome.util")

local M = {}

M.url = "https://github.com/MeanderingProgrammer/render-markdown.nvim"

---@type gm.HighlightsFn
function M.get(c)
  -- stylua: ignore
  local ret = {
    RenderMarkdownBullet       = { fg = c.blue },
    RenderMarkdownCode         = { bg = c.bg_highlight },
    RenderMarkdownDash         = {fg = c.orange},
    RenderMarkdownTableHead    = { fg = c.red },
    RenderMarkdownTableRow     = { fg = c.blue},
    RenderMarkdownCodeInline   = "@markup.raw.markdown_inline"
  }
  for i, color in ipairs(c.rainbow) do
    ret["RenderMarkdownH" .. i .. "Bg"] = { bg = Util.blend_bg(color, 0.1) }
    ret["RenderMarkdownH" .. i .. "Fg"] = { fg = color, bold = true }
  end
  return ret
end

return M
