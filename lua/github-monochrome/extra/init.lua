local M = {}

local extras = {
  alacritty = {
    name = "Alacritty",
    file_ext = "toml", -- file extension or nil
  },
  ghostty = {
    name = "Ghostty",
    file_ext = nil, -- file extension or nil
  },
  kitty = {
    name = "Kitty",
    file_ext = "conf", -- file extension or nil
  },
}

local function get_theme_names()
  local themes = {}
  local colors_path = "lua/github-monochrome/colors/*.lua"
  local scan = vim.fn.glob(colors_path, false, true)

  for _, file in ipairs(scan) do
    local name = vim.fn.fnamemodify(file, ":t:r")
    if name ~= "init" then
      table.insert(themes, name)
    end
  end

  return themes
end

local function is_valid_plugin_dir()
  local cwd = vim.fn.getcwd()
  local plugin_path = cwd .. "/lua/github-monochrome"
  return vim.fn.isdirectory(plugin_path) == 1
end

local function create_extra_files(theme_name)
  if not is_valid_plugin_dir() then
    vim.notify("Warning: Current directory must contain lua/github-monochrome", vim.log.levels.WARN)
    return
  end
  for extra_key, extra_config in pairs(extras) do
    -- Create directory if it doesn't exist
    local dir_path = "extras/" .. extra_key
    vim.fn.mkdir(dir_path, "p")

    -- Get colors for the theme
    local colors = require("github-monochrome.colors").setup({ style = theme_name })

    -- Get the extra template function
    local template = require("github-monochrome.extra." .. extra_key).template

    -- Generate content from template
    local content = template(colors, extra_config.name, theme_name)

    -- Create file
    local file_name = string.format("%s/github_monochrome_%s", dir_path, theme_name)
      .. (extra_config.file_ext and "." .. extra_config.file_ext or "")

    local file = io.open(file_name, "w")
    if file then
      file:write(content)
      file:close()
    end
  end
end

function M.setup()
  local themes = get_theme_names()
  for _, theme in ipairs(themes) do
    create_extra_files(theme)
  end
end

return M
