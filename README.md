# 🎨 Github Monochrome

A set of monochromatic light and dark color schemes for Neovim, inspired by [huytd/vscode-github-light-monochrome](https://github.com/huytd/vscode-github-light-monochrome) and [Nishantdd/github-monochrome-zed](https://github.com/Nishantdd/github-monochrome-zed).

The following styles (themes) are available at the moment: **light, dark, tokyonight, rosepine, and rosepine-dawn**. Few others variations are planned to be added. Extra themes are included for [Alacritty](https://github.com/alacritty/alacritty) and [Ghostty](https://ghostty.org/).

The project structure follows closely [Tokyonight.nvim](https://github.com/folke/tokyonight.nvim). Therefore, the theme configuration is very similar, and thanks to this, it allows for a high degree of customization ([see bellow](#configuration)).

![github-monochrome](https://github.com/user-attachments/assets/405403ff-a08c-43d4-a05b-b6c6414268ab)


## Styles

<details>
<summary>The following styles are available:</summary>

<br>

<details>
<summary><b>light</b></summary>

![github-monochrome-light](https://github.com/user-attachments/assets/264b9637-3efe-4bfe-9134-da79c906e6e6)

Activate with `vim.cmd("colorscheme github-monochrome-light")`.

</details>

<details>
<summary><b>dark</b></summary>

![github-monochrome-dark](https://github.com/user-attachments/assets/b73e7004-25c8-453c-a782-c106647538af)

Activate with `vim.cmd("colorscheme github-monochrome-dark")`.

</details>

<details>
<summary><b>rosepine</b></summary>

![github-monochrome-rosepine](https://github.com/user-attachments/assets/902d493c-007e-418c-b1b5-582d1a355379)

Activate with `vim.cmd("colorscheme github-monochrome-rosepine")`.

This style is based on [rose-pine/neovim](https://github.com/rose-pine/neovim).

</details>

<details>
<summary><b>rosepine-dawn</b></summary>

![github-monochrome-rosepine-dawn](https://github.com/user-attachments/assets/dd57e4b4-9724-47dd-98f8-ee2471ebbc3d)

Activate with `vim.cmd("colorscheme github-monochrome-rosepine-dawn")`.

This style is based on [rose-pine/neovim](https://github.com/rose-pine/neovim).

</details>

<details>
<summary><b>tokyonight</b></summary>

![github-monochrome-tokyonight](https://github.com/user-attachments/assets/2a97940c-7b93-4ee9-9d0a-6e0299facc0f)

Activate with `vim.cmd("colorscheme github-monochrome-tokyonight")`

This style is based on [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim).

</details>
</details>


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
- `vim.cmd("colorscheme github-monochrome-tokyonight")`
- `vim.cmd("colorscheme github-monochrome-rosepine")`
- `vim.cmd("colorscheme github-monochrome-rosepine-dawn")`

## Configuration

The configuration is very similar to that of [tokyonight.nivm](https://github.com/folke/tokyonight.nvim), with a few less options available, and few more to control styling.

<details>
<summary><b>Default Options</b></summary>

```lua
{
  style = "light", -- "light", "dark", "tokyonight", "rosepine", "rosepine-dawn"
  transparent = false,
  terminal_colors = true, -- Configure the colors used when opening a `:terminal`
  lualine_bold = { a = true, b = false, c = false }, -- make lualine sections a, b, or c bold

  styles = {
    comments = { italic = true },
    keywords = { bold = true },
    functions = { bold = true },
    statements = { bold = true }, -- e.g., try/except statements, but also if, for, etc.
    conditionals = { bold = true }, -- e.g., if statements
    loops = { bold = true }, -- e.g., for, while statements
    variables = {},
    floats = "normal", -- "dark", "transparent" or "normal"
    sidebars = "normal", -- "dark", "transparent" or "normal"
  },

  --- You can override specific color groups to use other groups or a hex color
  ---@param colors ColorScheme
  --- @param style? "light"|"dark"|"tokyonight"|"rosepine"|"rosepine-dawn"
  on_colors = function(colors, style) end,

  --- You can override specific highlights to use other groups or a hex color
  ---@param highlights gm.Highlights
  ---@param colors ColorScheme
  --- @param style? "light"|"dark"|"tokyonight"|"rosepine"|"rosepine-dawn"
  on_highlights = function(highlights, colors, style) end,

  ---@type table<string, boolean|{enabled:boolean}>
  plugins = {
    -- set to false to manually enable plugins
    -- or set to true and then manually disable plugins
    all = true,
    -- add any plugins that you want to enable/disable from those supported
    -- telescope = false,
    -- ["indent-blankline"] = false
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
  on_colors = function(c, s)
    -- applies to all styles
    -- c.bg = vim.o.background == "light" and c.bg or "#000000"
    c.number = c.purple

    -- applies to 'light' style only
    if s == "light" then
      c.bg = "#F4F4F4"
    end
  end,
  on_highlights = function(hl, c, s)
    -- applies to all styles
    hl.IblScope = { fg = "#634E89" }
    hl.FloatBorder = { fg = c.magenta }
    hl.TreesitterContext = { bg = c.none }
    hl.TreesitterContextBottom = { underline = true, sp = c.magenta }

    -- applies to 'light' style only
    if s == "light" then
      hl.FloatBorder = { fg = c.red }
    end
  end,
}
```

## Supported Plugins

<details>
<summary>Currently, the following plugins are supported (more will be added as needed):</summary>

(use the name in parenthesis to enable/disable in config)

- blink.cmp (blink)
- gitsigns.nvim (gitsigns)
- glance.nvim (glance)
- indent-blankline.nvim (indent-blankline)
- mini.pick (mini_pick)
- mini.tabline (mini_tabline)
- neo-tree.nvim (neo-tree)
- noice.nvim (noice)
- nvim-cmp (cmp)
- nvim-notify (notify)
- nvim-tree.lua (nvim-tree)
- nvim-treesitter-context (treesitter-context)
- render-markdown.nvim (render-markdown)
- telescope.nvim (telescope)
- snacks indent (snacks_indent)
- snacks picker (snacks_picker)
- vim-illuminate (illuminate)
- which-key.nvim (which-key)

</details>

## Acknowledgements

- [folke/tokyonight](https://github.com/folke/tokyonight.nvim): made this plugin possible (_standing on the shoulders of giants!_).
- [huytd/vscode-github-light-monochrome](https://github.com/huytd/vscode-github-light-monochrome): where inspiration came from.
- [Nishantdd/github-monochrome-zed](https://github.com/Nishantdd/github-monochrome-zed): nice tweaking to VSCode's version.
- [projekt0n/github-nvim-theme](https://github.com/projekt0n/github-nvim-theme): general reference.
