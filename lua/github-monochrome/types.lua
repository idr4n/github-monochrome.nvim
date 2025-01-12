-- This work is originally based on and modified from https://github.com/folke/tokyonight.nvim.

---@class gm.Highlight: vim.api.keyset.highlight
---@field style? vim.api.keyset.highlight

---@alias gm.Highlights table<string,gm.Highlight|string>
---@alias gm.HighlightsFn fun(colors: ColorScheme, opts:gm.Config):gm.Highlights

---@class gm.Styles
---@field comments? {italic?: boolean}
---@field keywords? {bold?: boolean}
---@field functions? {bold?: boolean}
---@field statements? {bold?: boolean}
---@field conditionals? {bold?: boolean}
---@field loops? {bold?: boolean}
---@field variables? table
---@field floats? string
---@field sidebars? string

---@alias style "light"|"dark"

---@class gm.Config
---@field style style
---@field transparent? boolean
---@field terminal_colors? boolean
---@field lualine_bold? {a:boolean, b:boolean, c:boolean}
---@field styles? gm.Styles
---@field on_colors? fun(colors: ColorScheme, style: style)
---@field on_highlights? fun(highlights: gm.Highlights, colors: ColorScheme, style: style)
---@field plugins? table<string, boolean|{enabled:boolean}>
