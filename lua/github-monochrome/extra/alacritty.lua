local M = {}

local Util = require("github-monochrome.util")

---@param colors ColorScheme
function M.template(colors, ext_name, theme_name)
  -- Additional colors
  local extra_colors = {
    light = {
      cursor = "#9775FA",
      sel_background = "#CDDCEF",
    },
    dark = {
      cursor = "#C8D3F5",
      sel_background = "#3B5070",
    },
  }

  colors = Util.convert_colors_to_upper(vim.tbl_extend("force", colors, extra_colors[theme_name]))
  local vars = vim.tbl_extend("force", colors, { name = ext_name, theme = theme_name })

  return Util.render_template(
    [[
# %{name} Colors (github_monochrome_%{theme})

# Default colors
[colors.primary]
background = "%{bg}"
foreground = "%{fg}"

[colors.cursor]
cursor     = "%{cursor}"
text       = "%{bg}"

[colors.selection]
background = "%{sel_background}"
text       = "%{fg}"

[colors.normal]
black      = "%{terminal.black}"
red        = "%{terminal.red}"
green      = "%{terminal.green}"
yellow     = "%{terminal.yellow}"
blue       = "%{terminal.blue}"
magenta    = "%{terminal.magenta}"
cyan       = "%{terminal.cyan}"
white      = "%{terminal.white}"

[colors.bright]
black      = "%{terminal.black_bright}"
red        = "%{terminal.red_bright}"
green      = "%{terminal.green_bright}"
yellow     = "%{terminal.yellow_bright}"
blue       = "%{terminal.blue_bright}"
magenta    = "%{terminal.magenta_bright}"
cyan       = "%{terminal.cyan_bright}"
white      = "%{terminal.white_bright}"
]],
    vars
  )
end

return M
