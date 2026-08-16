-- neovim.lua (Artemis Omarchy theme)
-- Proper LazyVim-compatible colorscheme that actually sticks

local function apply_artemis()
  local colors = {
    bg            = "#0A0F1F",
    bg_dark       = "#05080F",
    bg_dark1      = "#0C1326",
    bg_highlight  = "#141C2E",
    bg_visual     = "#1A2438",
    bg_sidebar    = "#0A0F1F",
    bg_popup      = "#0F1629",
    bg_statusline = "#0A0F1F",
    bg_float      = "#0F1629",

    fg            = "#FFFFFF",
    fg_dark       = "#B0B8D0",
    fg_gutter     = "#5A6A8A",
    fg_sidebar    = "#B0B8D0",

    comment       = "#5A6A8A",
    dark3         = "#5A6A8A",
    dark5         = "#647cb4",

    accent        = "#B0B8D0",

    blue          = "#60B0FF",
    blue0         = "#647cb4",
    blue1         = "#87a1c4",
    blue2         = "#50E0E0",
    blue5         = "#60B0FF",

    cyan          = "#50E0E0",
    green         = "#A0D070",
    green1        = "#A0D070",

    orange        = "#FF9A70",
    red           = "#FF4F00", -- NASA international orange
    yellow        = "#E8B050",
    magenta       = "#FF7A3F",
    purple        = "#B0B8D0",

    git           = {
      add    = "#A0D070",
      change = "#60B0FF",
      delete = "#FF4F00",
    },
    none          = "NONE",
  }

  -- Hard reset
  vim.cmd("highlight clear")
  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  vim.o.termguicolors = true
  vim.o.background = "dark"
  vim.g.colors_name = "artemis"

  local h = vim.api.nvim_set_hl

  -- Editor
  h(0, "Normal", { fg = colors.fg, bg = colors.bg })
  h(0, "NormalFloat", { fg = colors.fg, bg = colors.bg_float })
  h(0, "NormalNC", { fg = colors.fg, bg = colors.bg })
  h(0, "Comment", { fg = colors.comment, italic = true })
  h(0, "CursorLine", { bg = colors.bg_highlight })
  h(0, "CursorLineNr", { fg = colors.accent, bold = true })
  h(0, "LineNr", { fg = colors.fg_gutter })
  h(0, "Visual", { bg = colors.bg_visual })
  h(0, "Search", { bg = colors.blue0, fg = colors.fg })
  h(0, "IncSearch", { bg = colors.orange, fg = colors.bg })
  h(0, "StatusLine", { fg = colors.fg, bg = colors.bg_statusline })
  h(0, "StatusLineNC", { fg = colors.fg_dark, bg = colors.bg_statusline })
  h(0, "WinSeparator", { fg = colors.bg_highlight })
  h(0, "Pmenu", { fg = colors.fg, bg = colors.bg_popup })
  h(0, "PmenuSel", { bg = colors.bg_visual, fg = colors.fg })
  h(0, "FloatBorder", { fg = colors.blue0, bg = colors.bg_float })
  h(0, "Title", { fg = colors.accent, bold = true })
  h(0, "Directory", { fg = colors.blue })
  h(0, "MatchParen", { fg = colors.orange, bold = true })
  h(0, "NonText", { fg = colors.fg_gutter })
  h(0, "SpecialKey", { fg = colors.fg_gutter })

  -- Classic syntax
  h(0, "Identifier", { fg = colors.fg })
  h(0, "Function", { fg = colors.blue })
  h(0, "Statement", { fg = colors.magenta })
  h(0, "Keyword", { fg = colors.magenta })
  h(0, "PreProc", { fg = colors.orange })
  h(0, "Type", { fg = colors.yellow })
  h(0, "Constant", { fg = colors.orange })
  h(0, "String", { fg = colors.green })
  h(0, "Character", { fg = colors.green })
  h(0, "Number", { fg = colors.orange })
  h(0, "Boolean", { fg = colors.orange })
  h(0, "Float", { fg = colors.orange })
  h(0, "Operator", { fg = colors.cyan })
  h(0, "Special", { fg = colors.cyan })
  h(0, "SpecialChar", { fg = colors.cyan })
  h(0, "Delimiter", { fg = colors.fg_dark })
  h(0, "Underlined", { underline = true })
  h(0, "Error", { fg = colors.red })
  h(0, "Todo", { fg = colors.yellow, bold = true })
  h(0, "Label", { fg = colors.magenta })
  h(0, "Exception", { fg = colors.red })
  h(0, "Include", { fg = colors.magenta })
  h(0, "Define", { fg = colors.magenta })
  h(0, "Macro", { fg = colors.orange })
  h(0, "PreCondit", { fg = colors.orange })
  h(0, "StorageClass", { fg = colors.yellow })
  h(0, "Structure", { fg = colors.yellow })
  h(0, "Typedef", { fg = colors.yellow })

  -- Treesitter
  h(0, "@keyword", { fg = colors.magenta })
  h(0, "@keyword.function", { fg = colors.magenta })
  h(0, "@keyword.return", { fg = colors.magenta })
  h(0, "@keyword.operator", { fg = colors.magenta })
  h(0, "@keyword.conditional", { fg = colors.magenta })
  h(0, "@keyword.repeat", { fg = colors.magenta })
  h(0, "@keyword.import", { fg = colors.magenta })
  h(0, "@keyword.export", { fg = colors.magenta })
  h(0, "@keyword.exception", { fg = colors.red })
  h(0, "@keyword.directive", { fg = colors.orange })

  h(0, "@function", { fg = colors.blue })
  h(0, "@function.builtin", { fg = colors.blue1 })
  h(0, "@function.call", { fg = colors.blue })
  h(0, "@function.method", { fg = colors.blue })
  h(0, "@function.method.call", { fg = colors.blue })
  h(0, "@method", { fg = colors.blue })
  h(0, "@method.call", { fg = colors.blue })
  h(0, "@constructor", { fg = colors.yellow })

  h(0, "@variable", { fg = colors.fg })
  h(0, "@variable.builtin", { fg = colors.red })
  h(0, "@variable.parameter", { fg = colors.fg_dark })
  h(0, "@variable.member", { fg = colors.cyan })
  h(0, "@parameter", { fg = colors.fg_dark })
  h(0, "@field", { fg = colors.cyan })
  h(0, "@property", { fg = colors.cyan })

  h(0, "@type", { fg = colors.yellow })
  h(0, "@type.builtin", { fg = colors.yellow })
  h(0, "@type.definition", { fg = colors.yellow })
  h(0, "@module", { fg = colors.yellow })
  h(0, "@namespace", { fg = colors.yellow })

  h(0, "@constant", { fg = colors.orange })
  h(0, "@constant.builtin", { fg = colors.orange })
  h(0, "@constant.macro", { fg = colors.orange })
  h(0, "@number", { fg = colors.orange })
  h(0, "@number.float", { fg = colors.orange })
  h(0, "@boolean", { fg = colors.orange })
  h(0, "@string", { fg = colors.green })
  h(0, "@string.escape", { fg = colors.cyan })
  h(0, "@string.special", { fg = colors.cyan })
  h(0, "@string.regexp", { fg = colors.cyan })
  h(0, "@character", { fg = colors.green })

  h(0, "@operator", { fg = colors.cyan })
  h(0, "@punctuation", { fg = colors.fg_dark })
  h(0, "@punctuation.delimiter", { fg = colors.fg_dark })
  h(0, "@punctuation.bracket", { fg = colors.fg_dark })
  h(0, "@punctuation.special", { fg = colors.cyan })

  h(0, "@tag", { fg = colors.magenta })
  h(0, "@tag.attribute", { fg = colors.yellow })
  h(0, "@tag.delimiter", { fg = colors.fg_dark })

  h(0, "@comment", { fg = colors.comment, italic = true })
  h(0, "@comment.documentation", { fg = colors.comment, italic = true })
  h(0, "@comment.error", { fg = colors.red })
  h(0, "@comment.warning", { fg = colors.yellow })
  h(0, "@comment.todo", { fg = colors.yellow, bold = true })
  h(0, "@comment.note", { fg = colors.cyan })

  -- Elixir / common extras
  h(0, "@symbol", { fg = colors.orange })
  h(0, "@attribute", { fg = colors.orange })
  h(0, "@label", { fg = colors.cyan })

  -- LSP semantic tokens (force override)
  h(0, "@lsp.type.keyword", { fg = colors.magenta })
  h(0, "@lsp.type.function", { fg = colors.blue })
  h(0, "@lsp.type.method", { fg = colors.blue })
  h(0, "@lsp.type.variable", { fg = colors.fg })
  h(0, "@lsp.type.parameter", { fg = colors.fg_dark })
  h(0, "@lsp.type.property", { fg = colors.cyan })
  h(0, "@lsp.type.type", { fg = colors.yellow })
  h(0, "@lsp.type.class", { fg = colors.yellow })
  h(0, "@lsp.type.interface", { fg = colors.yellow })
  h(0, "@lsp.type.enum", { fg = colors.yellow })
  h(0, "@lsp.type.enumMember", { fg = colors.orange })
  h(0, "@lsp.type.namespace", { fg = colors.yellow })
  h(0, "@lsp.type.module", { fg = colors.yellow })
  h(0, "@lsp.type.string", { fg = colors.green })
  h(0, "@lsp.type.number", { fg = colors.orange })
  h(0, "@lsp.type.boolean", { fg = colors.orange })
  h(0, "@lsp.type.operator", { fg = colors.cyan })
  h(0, "@lsp.type.comment", { fg = colors.comment, italic = true })
  h(0, "@lsp.typemod.variable.defaultLibrary", { fg = colors.red })
  h(0, "@lsp.typemod.function.defaultLibrary", { fg = colors.blue1 })

  -- Diagnostics
  h(0, "DiagnosticError", { fg = colors.red })
  h(0, "DiagnosticWarn", { fg = colors.yellow })
  h(0, "DiagnosticInfo", { fg = colors.blue })
  h(0, "DiagnosticHint", { fg = colors.cyan })
  h(0, "DiagnosticUnderlineError", { undercurl = true, sp = colors.red })
  h(0, "DiagnosticUnderlineWarn", { undercurl = true, sp = colors.yellow })
  h(0, "DiagnosticUnderlineInfo", { undercurl = true, sp = colors.blue })
  h(0, "DiagnosticUnderlineHint", { undercurl = true, sp = colors.cyan })
  h(0, "DiagnosticVirtualTextError", { fg = colors.red })
  h(0, "DiagnosticVirtualTextWarn", { fg = colors.yellow })
  h(0, "DiagnosticVirtualTextInfo", { fg = colors.blue })
  h(0, "DiagnosticVirtualTextHint", { fg = colors.cyan })

  -- Git
  h(0, "DiffAdd", { fg = colors.git.add })
  h(0, "DiffChange", { fg = colors.git.change })
  h(0, "DiffDelete", { fg = colors.git.delete })
  h(0, "DiffText", { bg = colors.bg_visual })
  h(0, "GitSignsAdd", { fg = colors.git.add })
  h(0, "GitSignsChange", { fg = colors.git.change })
  h(0, "GitSignsDelete", { fg = colors.git.delete })
end

-- Helper: is Artemis currently the active Omarchy theme?
local function is_artemis_active()
  local candidates = {
    vim.fn.expand("~/.local/state/omarchy/current/theme.name"),
    vim.fn.expand("~/.config/omarchy/current/theme.name"),
  }
  for _, path in ipairs(candidates) do
    if vim.fn.filereadable(path) == 1 then
      local name = (vim.fn.readfile(path)[1] or ""):lower()
      if name:find("artemis") then
        return true
      end
    end
  end
  return false
end

-- Apply immediately when this file is loaded (switching *to* Artemis)
apply_artemis()

-- Guarded autocmd: only re-apply if Omarchy still says Artemis is active
vim.api.nvim_create_autocmd("ColorScheme", {
  group = vim.api.nvim_create_augroup("ArtemisTheme", { clear = true }),
  callback = function()
    if is_artemis_active() then
      apply_artemis()
    end
  end,
})

-- Apply immediately so the first load looks correct

-- Re-apply whenever *any* colorscheme is loaded.
-- This is what makes Omarchy hot-reload work without the function crash.
--vim.api.nvim_create_autocmd("ColorScheme", {
--  group = vim.api.nvim_create_augroup("ArtemisTheme", { clear = true }),
--  callback = function()
-- Always paint over whatever LazyVim / hot-reload just loaded
--   apply_artemis()
--  end,
--})

-- Make this the real colorscheme LazyVim will load
return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "habamax"
    },
  },
}
