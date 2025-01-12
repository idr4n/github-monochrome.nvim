-- This work is originally based on and modified from https://github.com/folke/tokyonight.nvim.

local M = {}

M.bg = "#000000"
M.fg = "#ffffff"

---@param color string
---@return string
local function to_upper_hex(color)
  if type(color) == "string" and color:match("^#%x+$") then
    return color:upper()
  end
  return color
end

---@param colors ColorScheme
---@return ColorScheme
function M.convert_colors_to_upper(colors)
  local result = {}
  for k, v in pairs(colors) do
    if type(v) == "table" then
      result[k] = M.convert_colors_to_upper(v)
    else
      result[k] = to_upper_hex(v)
    end
  end
  return result
end

---@param template string
---@param vars table
---@return string
function M.render_template(template, vars)
  return (
    template:gsub("%%{([%w_%.]+)}", function(key)
      local value = vars
      for k in key:gmatch("[^%.]+") do
        value = value[k]
      end
      return value or ""
    end)
  )
end

---@param c string
local function rgb(c)
  c = string.lower(c)
  return { tonumber(c:sub(2, 3), 16), tonumber(c:sub(4, 5), 16), tonumber(c:sub(6, 7), 16) }
end

function M.mod(modname)
  if package.loaded[modname] then
    return package.loaded[modname]
  end

  local plugin_root = vim.fn.fnamemodify(debug.getinfo(1, "S").source:sub(2), ":h:h")
  local file_path = plugin_root .. "/" .. modname:gsub("%.", "/") .. ".lua"

  -- Check if file exists
  if vim.fn.filereadable(file_path) == 0 then
    error(string.format("Module file not found: %s", file_path))
  end

  local ret = assert(loadfile(file_path))()
  package.loaded[modname] = ret
  return ret
end

---@param foreground string foreground color
---@param background string background color
---@param alpha number|string number between 0 and 1. 0 results in bg, 1 results in fg
function M.blend(foreground, alpha, background)
  alpha = type(alpha) == "string" and (tonumber(alpha, 16) / 0xff) or alpha
  local bg = rgb(background)
  local fg = rgb(foreground)

  local blendChannel = function(i)
    local ret = (alpha * fg[i] + ((1 - alpha) * bg[i]))
    return math.floor(math.min(math.max(0, ret), 255) + 0.5)
  end

  return string.format("#%02x%02x%02x", blendChannel(1), blendChannel(2), blendChannel(3))
end

function M.blend_bg(hex, amount, bg)
  return M.blend(hex, amount, bg or M.bg)
end

M.darken = M.blend_bg

function M.blend_fg(hex, amount, fg)
  return M.blend(hex, amount, fg or M.fg)
end

M.lighten = M.blend_fg

---@param color string  -- The hex color string to be adjusted
---@param lightness_amount number? -- The amount to increase lightness by (optional, default: 0.05)
---@param saturation_amount number? -- The amount to increase saturation by (optional, default: 0.2)
function M.brighten(color, lightness_amount, saturation_amount)
  lightness_amount = lightness_amount or 0.05
  saturation_amount = saturation_amount or 0.2
  local hsluv = require("github-monochrome.hsluv")

  -- Convert the hex color to HSLuv
  local hsl = hsluv.hex_to_hsluv(color)

  -- Increase lightness slightly
  hsl[3] = math.min(hsl[3] + (lightness_amount * 100), 100)

  -- Increase saturation a bit more to make the color more vivid
  hsl[2] = math.min(hsl[2] + (saturation_amount * 100), 100)

  -- Convert the HSLuv back to hex and return
  return hsluv.hsluv_to_hex(hsl)
end

---@param groups gm.Highlights
---@return table<string, string|gm.Highlight>
function M.resolve(groups)
  for _, hl in pairs(groups) do
    if type(hl.style) == "table" then
      for k, v in pairs(hl.style) do
        hl[k] = v
      end
      hl.style = nil
    end
  end
  return groups
end

---@param file string
function M.read(file)
  local fd = assert(io.open(file, "r"))
  ---@type string
  local data = fd:read("*a")
  fd:close()
  return data
end

---@param file string
---@param contents string
function M.write(file, contents)
  vim.fn.mkdir(vim.fn.fnamemodify(file, ":h"), "p")
  local fd = assert(io.open(file, "w+"))
  fd:write(contents)
  fd:close()
end

return M
