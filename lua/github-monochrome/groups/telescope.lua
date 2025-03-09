-- This work is originally based on and modified from https://github.com/folke/tokyonight.nvim.

local M = {}

M.url = "https://github.com/nvim-telescope/telescope.nvim"

---@type gm.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    TelescopeBorder             = { fg = c.border_highlight, bg = c.bg_float },
    TelescopeNormal             = { fg = c.fg, bg = c.bg_float },
    TelescopeMatching           = { fg = c.purple, bold = true },
    TelescopeSelection          = { fg = c.fg, bg = opts.styles.floats == "transparent" and c.visual or c.bg_highlight },
    TelescopePromptBorder       = { fg = c.border_highlight, bg = c.bg_float },
    TelescopePromptTitle        = { fg = c.border_highlight, bg = c.bg_float },
    TelescopePromptCounter      = { fg = c.text_muted, bg = c.bg_float },
    TelescopeResultsComment     = { fg = c.text_muted },
  }
end

return M
