-- This work is originally based on and modified from https://github.com/folke/tokyonight.nvim.

local Util = require("github-monochrome.util")

local M = {}

-- stylua: ignore
M.plugins = {
  ["blink.cmp"]                 = "blink",
  ["bufferline.nvim"]           = "bufferline",
  ["gitsigns.nvim"]             = "gitsigns",
  ["glance.nvim"]               = "glance",
  ["indent-blankline.nvim"]     = "indent-blankline",
  ["mini.icons"]                = "mini_icons",
  ["mini.pick"]                 = "mini_pick",
  ["mini.tabline"]              = "mini_tabline",
  ["neo-tree.nvim"]             = "neo-tree",
  ["noice.nvim"]                = "noice",
  ["nvim-cmp"]                  = "cmp",
  ["nvim-notify"]               = "notify",
  ["nvim-tree.lua"]             = "nvim-tree",
  ["nvim-treesitter-context"]   = "treesitter-context",
  ["render-markdown.nvim"]      = "render-markdown",
  ["telescope.nvim"]            = "telescope",
  ["snacks.indent"]             = "snacks_indent",
  ["snacks.picker"]             = "snacks_picker",
  ["vim-illuminate"]            = "illuminate",
  ["visual-whitespace.nvim"]    = "visual-whitespace",
  ["which-key.nvim"]            = "which-key",
}

function M.get_group(name)
  ---@type {get: gm.HighlightsFn, url: string}
  return Util.mod("github-monochrome.groups." .. name)
end

---@param colors ColorScheme
---@param opts gm.Config
function M.get(name, colors, opts)
  local mod = M.get_group(name)
  return mod.get(colors, opts)
end

---@param colors ColorScheme
---@param opts gm.Config
function M.setup(colors, opts)
  local groups = {
    base = true,
    kinds = true,
    semantic_tokens = true,
    treesitter = true,
  }

  if opts.plugins.all then
    for _, group in pairs(M.plugins) do
      groups[group] = true
    end
  end

  -- manually enable/disable plugins
  for _, group in pairs(M.plugins) do
    local use = opts.plugins[group]
    use = use == nil and opts.plugins[group] or use
    if use ~= nil then
      if type(use) == "table" then
        use = use.enabled
      end
      groups[group] = use or nil
    end
  end

  local names = vim.tbl_keys(groups)
  table.sort(names)

  -- merge highlights
  local ret = {}
  for group in pairs(groups) do
    for k, v in pairs(M.get(group, colors, opts)) do
      ret[k] = v
    end
  end
  Util.resolve(ret)

  opts.on_highlights(ret, colors, opts.style)

  return ret, groups
end

return M
