-- neovim.lua (for Artemis Omarchy theme)
return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = function()
        local colors = {
          -- Core palette
          bg = "#0A0F1F",
          bg_dark = "#05080F",
          bg_dark1 = "#0C1326",
          bg_highlight = "#1A2338",
          bg_visual = "#1F2A45",
          bg_sidebar = "#0A0F1F",
          bg_popup = "#0F1629",
          bg_statusline = "#0A0F1F",
          bg_float = "#0F1629",
          fg = "#C0CAF5",
          fg_dark = "#A9B1D6",
          fg_gutter = "#3B4261",
          fg_sidebar = "#A9B1D6",
          comment = "#5A6A8A",
          dark3 = "#545C7E",
          dark5 = "#737AA2",
          accent = "#B0B8D0",
          blue = "#7AA2F7",
          blue0 = "#3D59A1",
          blue1 = "#2AC3DE",
          blue2 = "#0DB9D7",
          blue5 = "#89DDFF",
          cyan = "#50E0E0",
          green = "#A0D070",
          green1 = "#73DACA",
          orange = "#FF9A70",
          red = "#FF4F00",
          yellow = "#E8B050",
          magenta = "#FF7A3F",
          purple = "#9D7CD8",
          git = {
            add = "#449DAB",
            change = "#6183BB",
            delete = "#914C54",
          },
          none = "NONE",
        }

        vim.cmd("highlight clear")
        vim.g.colors_name = "artemis"
        vim.o.termguicolors = true

        local h = vim.api.nvim_set_hl

        -- Editor
        h(0, "Normal", { fg = colors.fg, bg = colors.bg })
        h(0, "NormalFloat", { fg = colors.fg, bg = colors.bg_float })
        h(0, "NormalNC", { fg = colors.fg, bg = colors.bg })
        h(0, "Comment", { fg = colors.comment, italic = true })
        h(0, "CursorLine", { bg = colors.bg_highlight })
        h(0, "CursorLineNr", { fg = colors.accent })
        h(0, "LineNr", { fg = colors.fg_gutter })
        h(0, "Visual", { bg = colors.bg_visual })
        h(0, "Search", { bg = colors.blue0, fg = colors.fg })
        h(0, "IncSearch", { bg = colors.orange, fg = colors.bg })
        h(0, "StatusLine", { fg = colors.fg, bg = colors.bg_statusline })
        h(0, "StatusLineNC", { fg = colors.fg_dark, bg = colors.bg_statusline })
        h(0, "WinSeparator", { fg = colors.bg_highlight })
        h(0, "Pmenu", { fg = colors.fg, bg = colors.bg_popup })
        h(0, "PmenuSel", { bg = colors.bg_visual })
        h(0, "FloatBorder", { fg = colors.blue0, bg = colors.bg_float })

        -- Syntax / Treesitter
        h(0, "@keyword", { fg = colors.magenta })
        h(0, "@function", { fg = colors.blue })
        h(0, "@function.builtin", { fg = colors.blue1 })
        h(0, "@string", { fg = colors.green })
        h(0, "@variable", { fg = colors.fg })
        h(0, "@variable.builtin", { fg = colors.red })
        h(0, "@comment", { fg = colors.comment, italic = true })
        h(0, "@type", { fg = colors.yellow })
        h(0, "@type.builtin", { fg = colors.yellow })
        h(0, "@constant", { fg = colors.orange })
        h(0, "@constant.builtin", { fg = colors.orange })
        h(0, "@number", { fg = colors.orange })
        h(0, "@boolean", { fg = colors.orange })
        h(0, "@operator", { fg = colors.blue5 })
        h(0, "@punctuation", { fg = colors.fg_dark })
        h(0, "@property", { fg = colors.cyan })
        h(0, "@parameter", { fg = colors.fg })

        -- LSP / Diagnostics
        h(0, "DiagnosticError", { fg = colors.red })
        h(0, "DiagnosticWarn", { fg = colors.yellow })
        h(0, "DiagnosticInfo", { fg = colors.blue })
        h(0, "DiagnosticHint", { fg = colors.cyan })
        h(0, "DiagnosticUnderlineError", { undercurl = true, sp = colors.red })
        h(0, "DiagnosticUnderlineWarn", { undercurl = true, sp = colors.yellow })
        h(0, "DiagnosticUnderlineInfo", { undercurl = true, sp = colors.blue })
        h(0, "DiagnosticUnderlineHint", { undercurl = true, sp = colors.cyan })

        -- Git
        h(0, "DiffAdd", { fg = colors.git.add })
        h(0, "DiffChange", { fg = colors.git.change })
        h(0, "DiffDelete", { fg = colors.git.delete })
        h(0, "GitSignsAdd", { fg = colors.git.add })
        h(0, "GitSignsChange", { fg = colors.git.change })
        h(0, "GitSignsDelete", { fg = colors.git.delete })

        -- You can keep adding groups here (Telescope, Neo-tree, Cmp, etc.)
      end,
    },
  },
}
