-- This work is originally based on and modified from https://github.com/folke/tokyonight.nvim.

local Util = require("github-monochrome.util")

local M = {}

---@type gm.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  local ret = {
    ["@annotation"]                   = "PreProc",
    ["@attribute"]                    = "PreProc",
    ["@boolean"]                      = "Boolean",
    ["@character"]                    = "Character",
    ["@character.printf"]             = "SpecialChar",
    ["@character.special"]            = "SpecialChar",
    ["@comment"]                      = "Comment",
    ["@comment.error"]                = { fg = c.error },
    ["@comment.hint"]                 = { fg = c.hint },
    ["@comment.info"]                 = { fg = c.info },
    ["@comment.note"]                 = { fg = c.hint },
    ["@comment.todo"]                 = { fg = c.todo },
    ["@comment.warning"]              = { fg = c.warning },
    ["@constant"]                     = "Constant",
    ["@constant.builtin"]             = "Special",
    ["@constant.macro"]               = "Define",
    ["@constructor"]                  = { fg = c.fg },
    ["@constructor.tsx"]              = { fg = c.fg },
    ["@diff.delta"]                   = "DiffChange",
    ["@diff.minus"]                   = "DiffDelete",
    ["@diff.plus"]                    = "DiffAdd",
    ["@function"]                     = "Function",
    ["@function.builtin"]             = "Special",
    ["@function.call"]                = "@function",
    ["@function.macro"]               = "Macro",
    ["@function.method"]              = "Function",
    ["@function.method.call"]         = "@function.method",
    ["@keyword"]                      = { fg = c.fg, style = opts.styles.keywords },
    ["@keyword.conditional"]          = { fg = c.fg, style = opts.styles.conditionals },
    ["@keyword.coroutine"]            = "@keyword",
    ["@keyword.debug"]                = "Debug",
    ["@keyword.directive"]            = "PreProc",
    ["@keyword.directive.define"]     = "Define",
    ["@keyword.exception"]            = "Exception",
    ["@keyword.function"]             = { fg = c.fg, style = opts.styles.functions },
    ["@keyword.import"]               = "@keyword",
    ["@keyword.operator"]             = { fg = c.fg, bold = true },
    ["@keyword.repeat"]               = { fg = c.fg, style = opts.styles.loops },
    ["@keyword.return"]               = "@keyword",
    ["@keyword.storage"]              = "StorageClass",
    ["@label"]                        = { fg = c.fg },
    ["@markup"]                       = "@none",
    ["@markup.emphasis"]              = { italic = true },
    ["@markup.environment"]           = "Macro",
    ["@markup.environment.name"]      = "Type",
    ["@markup.heading"]               = "Title",
    ["@markup.italic"]                = { italic = true },
    ["@markup.link"]                  = { fg = c.teal },
    ["@markup.link.label"]            = "SpecialChar",
    ["@markup.link.label.symbol"]     = "Identifier",
    ["@markup.link.url"]              = "Underlined",
    ["@markup.list"]                  = { fg = c.fg },
    ["@markup.list.checked"]          = { fg = c.fg },
    ["@markup.list.markdown"]         = { fg = c.fg, },
    ["@markup.list.unchecked"]        = { fg = c.fg },
    ["@markup.math"]                  = "Special",
    ["@markup.raw"]                   = "String",
    ["@markup.raw.markdown_inline"]   = { bg = c.bg_highlight, fg = c.blue },
    ["@markup.strikethrough"]         = { strikethrough = true },
    ["@markup.strong"]                = { bold = true },
    ["@markup.underline"]             = { underline = true },
    ["@module"]                       = "Include",
    ["@module.builtin"]               = { fg = c.fg, bold = true },
    ["@namespace.builtin"]            = "@variable.builtin",
    ["@none"]                         = {},
    ["@number"]                       = "Number",
    ["@number.float"]                 = "Float",
    ["@operator"]                     = "@operator",
    ["@property"]                     = { fg = c.fg },
    ["@punctuation.bracket"]          = { fg = c.blue },
    ["@punctuation.delimiter"]        = { fg = c.fg },
    ["@punctuation.special"]          = { fg = c.blue },
    ["@punctuation.special.markdown"] = { fg = c.orange },
    ["@string"]                       = "String",
    ["@string.documentation"]         = "String",
    ["@string.escape"]                = { fg = c.fg, bold = true },
    ["@string.regexp"]                = { fg = c.fg, bold = true },
    ["@tag"]                          = "Label",
    ["@tag.attribute"]                = "@property",
    ["@tag.delimiter"]                = "Delimiter",
    ["@tag.delimiter.tsx"]            = { fg = Util.blend_bg(c.fg, 0.7) },
    ["@tag.tsx"]                      = { fg = c.fg, },
    ["@tag.javascript"]               = { fg = c.fg, },
    ["@type"]                         = "Type",
    ["@type.builtin"]                 = { fg = c.fg, bold = true },
    ["@type.definition"]              = "Typedef",
    ["@type.qualifier"]               = "@keyword",
    ["@variable"]                     = { fg = c.fg, style = opts.styles.variables },
    ["@variable.builtin"]             = { fg = c.fg, },
    ["@variable.member"]              = { fg = c.fg, },
    ["@variable.parameter"]           = { fg = c.fg, },
    ["@variable.parameter.builtin"]   = { fg = Util.blend_fg(c.yellow, 0.8) },
  }

  for i, color in ipairs(c.rainbow) do
    ret["@markup.heading." .. i .. ".markdown"] = { fg = color, bold = true }
  end
  return ret
end

return M
