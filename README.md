# 🎨 Github Monochrome

A set of monochromatic light and dark themes, inspired by [huytd/vscode-github-light-monochrome](https://github.com/huytd/vscode-github-light-monochrome) and [Nishantdd/github-monochrome-zed](https://github.com/Nishantdd/github-monochrome-zed). Only a light and dark themes are available at the moment, but a few others variations are planned to be added. Extra themes are included for [Alacritty](https://github.com/alacritty/alacritty) and [Ghostty](https://ghostty.org/).

The project structure follows closely [Tokyonight.nivm](https://github.com/folke/tokyonight.nvim). Therefore, the theme configuration is very similar, and thanks to this, it allows for a high degree of customization ([see bellow](#configuration)).

## Requirements

- Neovim >= 0.8.0

## Installation and Usage

Install with your preferred package manager, or with lazy.nvim:

```lua
{
  "idr4n/github-monochrome.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
}
```

To enable the theme with the default style (i.e., `light`) or with the style defined in your custom settings, use:

- `vim.cmd("colorscheme github-monochrome")`

To enable the theme with a specific style, use:

- `vim.cmd("colorscheme github-monochrome-light")`
- `vim.cmd("colorscheme github-monochrome-dark")`

## Configuration

The configuration is very similar to that of [tokyonight.nivm](https://github.com/folke/tokyonight.nvim), with a few less options available, and few more to control styling.

<details>
<summary><b>Default Options</b></summary>

```lua
{
  style = "light", -- "light", "dark"
  transparent = false,
  terminal_colors = true, -- Configure the colors used when opening a `:terminal`

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

  --- You can override specific color groups to use other groups or a hex color
  ---@param colors ColorScheme
  on_colors = function(colors) end,

  --- You can override specific highlights to use other groups or a hex color
  ---@param highlights gm.Highlights
  ---@param colors ColorScheme
  on_highlights = function(highlights, colors) end,

  ---@type table<string, boolean|{enabled:boolean}>
  plugins = {
    -- set to false to manually enable plugins
    -- or set to true and then manually disable plugins
    all = true,
    -- add any plugins that you want to enable/disable from those supported
    -- telescope = false,
  },
}
```
</details>

### Modifying colors and highlight groups

Example:

```lua
{
  styles = {
    comments = { italic = false },
    conditionals = { bold = true },
    loops = { bold = true },
    variables = {},
    floats = "dark",
    sidebars = "dark",
  },
  on_colors = function(c)
    c.bg = vim.o.background == "light" and c.bg or "#000000"
    c.number = c.purple
  end,
  on_highlights = function(hl, c)
    hl.IblScope = { fg = "#634E89" }
    hl.FloatBorder = { fg = c.magenta }
    hl.TreesitterContext = { bg = c.none }
    hl.TreesitterContextBottom = { underline = true, sp = c.magenta }
  end,
}
```

## Supported Plugins

Currently, the following plugins are supported (more will be added as needed):

- gitsigns.nvim
- glance.nvim
- indent-blankline.nvim
- mini.pick
- mini.tabline
- neo-tree.nvim
- noice.nvim
- nvim-cmp
- nvim-notify
- nvim-tree
- render-markdown.nvim
- telescope.nvim
- treesitter-context
- vim-illuminate
- which-key.nvim

## Acknowledgements

- [folke/tokyonight](https://github.com/folke/tokyonight.nvim)
- [huytd/vscode-github-light-monochrome](https://github.com/huytd/vscode-github-light-monochrome)
- [Nishantdd/github-monochrome-zed](https://github.com/Nishantdd/github-monochrome-zed)
- [projekt0n/github-nvim-theme](https://github.com/projekt0n/github-nvim-theme)