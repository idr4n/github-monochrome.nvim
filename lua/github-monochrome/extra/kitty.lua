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
    solarized = {
      cursor = "#D30102",
      sel_background = "#073642",
    },
    tokyonight = {
      cursor = "#C0CAF5",
      sel_background = "#28344A",
    },
    rosepine = {
      cursor = "#E0DEF4",
      sel_background = "#403d52",
    },
    ["rosepine-dawn"] = {
      cursor = "#575279",
      sel_background = "#DFDAD9",
    },
  }

  local tab_colors = {
    active_tab_background = Util.blend_fg(colors.bg, 0.85),
  }

  colors = Util.convert_colors_to_upper(vim.tbl_extend("force", colors, tab_colors, extra_colors[theme_name]))
  local vars = vim.tbl_extend("force", colors, { name = ext_name, theme = theme_name })

  return Util.render_template(
    [[
## name: github_monochrome_%{theme}
## license: MIT
## author: idr4n
## upstream: https://github.com/idr4n/github-monochrome.nvim

background              %{bg}
foreground              %{fg}
cursor                  %{cursor}

selection_background    %{sel_background}
selection_foreground    %{fg}

color0                  %{terminal.black}
color1                  %{terminal.red}
color2                  %{terminal.green}
color3                  %{terminal.yellow}
color4                  %{terminal.blue}
color5                  %{terminal.magenta}
color6                  %{terminal.cyan}
color7                  %{terminal.white}

color8                  %{terminal.black_bright}
color9                  %{terminal.red_bright}
color10                 %{terminal.green_bright}
color11                 %{terminal.yellow_bright}
color12                 %{terminal.blue_bright}
color13                 %{terminal.magenta_bright}
color14                 %{terminal.cyan_bright}
color15                 %{terminal.white_bright}

# Tabs
tab_bar_background        none
active_tab_background   %{active_tab_background}
active_tab_foreground   %{fg_dark}
inactive_tab_background %{bg}
inactive_tab_foreground %{hint_fg}
]],
    vars
  )
end

return M
