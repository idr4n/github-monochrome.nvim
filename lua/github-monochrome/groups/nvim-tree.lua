local M = {}

M.url = "https://github.com/nvim-tree/nvim-tree.lua"

---@type gm.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    NvimTreeFolderIcon   = { bg = c.none, fg = c.blue },
    NvimTreeGitDeleted   = { fg = c.git.delete },
    NvimTreeGitDirty     = { fg = c.git.change },
    NvimTreeGitNew       = { fg = c.git.add },
    NvimTreeImageFile    = { fg = c.fg_sidebar },
    NvimTreeIndentMarker = { fg = c.fg_gutter },
    NvimTreeNormal       = { fg = c.fg_sidebar, bg = c.bg_sidebar },
    NvimTreeNormalNC     = { fg = c.fg_sidebar, bg = c.bg_sidebar },
    NvimTreeNormalFloat  = { fg = c.fg_sidebar, bg = c.bg_sidebar },
    NvimTreeOpenedFile   = { bg = c.bg_highlight },
    NvimTreeRootFolder   = { fg = c.blue, bold = true },
    NvimTreeSpecialFile  = { fg = c.purple, underline = true },
    NvimTreeSymlink      = { fg = c.blue },
    NvimTreeWinSeparator = { fg = opts.styles.sidebars == "dark" and c.bg_sidebar or c.border, bg = c.bg_sidebar },
  }
end

return M
