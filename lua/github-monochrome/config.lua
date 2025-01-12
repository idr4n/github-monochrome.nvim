-- This work is originally based on and modified from https://github.com/folke/tokyonight.nvim.

local M = {}

M.version = "1.0.0"

M.defaults = {
  style = "light", -- "light", "dark"
  transparent = false,
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim

  styles = {
    comments = { italic = true },
    keywords = { bold = true },
    functions = { bold = true },
    statements = { bold = true }, -- e.g., try/except statements, but also if, for, etc.
    conditionals = { bold = false }, -- e.g., if statements
    loops = { bold = false }, -- e.g., for, while statements
    variables = {},
    floats = "normal",
    sidebars = "normal",
  },

  --- Override specific color groups to use other groups or a hex color
  ---@param colors ColorScheme
  on_colors = function(colors) end,

  --- Override specific highlights to use other groups or a hex color
  ---@param highlights gm.Highlights
  ---@param colors ColorScheme
  on_highlights = function(highlights, colors) end,

  ---@type table<string, boolean|{enabled:boolean}>
  plugins = {
    -- set to false to manually enable/disable plugins
    -- or set to true and then manually disable plugins
    all = true,
    -- add any plugins that you want to enable/disable from those supported
    -- telescope = false,
  },
}

---@type gm.Config
M.options = nil

---@params options? gm.Config
function M.setup(options)
  M.options = vim.tbl_deep_extend("force", {}, M.defaults, options or {})
end

---@param opts? gm.Config
function M.extend(opts)
  return opts and vim.tbl_deep_extend("force", {}, M.options, opts) or M.options
end

setmetatable(M, {
  __index = function(_, k)
    if k == "options" then
      return M.defaults
    end
  end,
})

return M
