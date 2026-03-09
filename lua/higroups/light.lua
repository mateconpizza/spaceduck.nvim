-- spaceduck light palette

local function hi()
  return require("highlighter")
end

local M = {}

---@param c spaceduck.palette
---@return table<string, palette.HighlightAttrs>
function M.setup(c)
  return {
    ui = {
      Normal = {
        fg = c.cream.hex,
        ctermfg = c.cream.cterm,
        bg = c.blackish.hex,
        ctermbg = c.blackish.cterm,
      },
      ColorColumn = {
        bg = c.dark_blue.hex,
        ctermbg = c.dark_blue.cterm,
      },
      CursorColumn = {
        bg = c.dark_blue.hex,
        ctermbg = c.dark_blue.cterm,
      },
      Conceal = {
        fg = c.grey_purple.hex,
        ctermfg = c.grey_purple.cterm,
      },
      Cursor = {
        fg = c.white.hex,
        ctermfg = c.white.cterm,
        bg = c.grey_purple.hex,
        ctermbg = c.grey_purple.cterm,
      },
      CursorIM = { link = "Cursor" },
      CursorLine = {
        bg = c.dark_blue.hex,
        ctermbg = c.dark_blue.cterm,
      },
      CursorLineNr = {
        fg = c.greyer.hex,
        ctermfg = c.greyer.cterm,
        bg = c.dark_blue.hex,
        ctermbg = c.dark_blue.cterm,
      },
      Directory = {
        fg = c.cyan.hex,
        ctermfg = c.cyan.cterm,
      },
      EndOfBuffer = {
        fg = c.dark_purple.hex,
        ctermfg = c.dark_purple.cterm,
        bg = c.blackish.hex,
        ctermbg = c.blackish.cterm,
      },
      TermCursor = { link = "Cursor" },
      ErrorMsg = {
        fg = c.red.hex,
        ctermfg = c.red.cterm,
      },
      VertSplit = {
        fg = c.dark_purple.hex,
        ctermfg = c.dark_purple.cterm,
        bg = c.blackish.hex,
        ctermbg = c.blackish.cterm,
      },
      Folded = {
        fg = c.grey_purple.hex,
        ctermfg = c.grey_purple.cterm,
        bg = c.dark_grey.hex,
        ctermbg = c.dark_grey.cterm,
      },
      FoldColumn = {
        fg = c.dark_purple.hex,
        ctermfg = c.dark_purple.cterm,
        bg = c.blackish.hex,
        ctermbg = c.blackish.cterm,
      },
      SignColumn = {
        fg = c.dark_purple.hex,
        ctermfg = c.dark_purple.cterm,
        bg = c.blackish.hex,
        ctermbg = c.blackish.cterm,
      },
      IncSearch = {
        fg = c.white.hex,
        ctermfg = c.white.cterm,
        bg = c.purple.hex,
        ctermbg = c.purple.cterm,
      },
      LineNr = {
        fg = c.grey_purple.hex,
        ctermfg = c.grey_purple.cterm,
        bg = c.blackish.hex,
        ctermbg = c.blackish.cterm,
      },
      MatchParen = {
        fg = c.white.hex,
        ctermfg = c.white.cterm,
        bg = c.light_purple.hex,
        ctermbg = c.light_purple.cterm,
        bold = true,
      },
      ModeMsg = { fg = c.purple.hex, ctermfg = c.purple.cterm },
      MoreMsg = { fg = c.purple.hex, ctermfg = c.purple.cterm },
      NonText = { link = "EndOfBuffer" },
      Question = { fg = c.purple.hex, ctermfg = c.purple.cterm },
      QuickFixLine = {
        fg = c.cream.hex,
        ctermfg = c.cream.cterm,
        bg = c.dark_blue.hex,
        ctermbg = c.dark_blue.cterm,
      },
      Search = {
        fg = c.white.hex,
        ctermfg = c.white.cterm,
        bg = c.cyan.hex,
        ctermbg = c.cyan.cterm,
      },
      SpecialKey = {
        fg = c.orange.hex,
        ctermfg = c.orange.cterm,
        bg = c.blackish.hex,
        ctermbg = c.blackish.cterm,
      },
      Whitespace = { link = "EndOfBuffer" },
      WinSeparator = { link = "VertSplit" },
    },

    menu = {
      Pmenu = {
        fg = c.cream.hex,
        ctermfg = c.cream.cterm,
        bg = c.dark_grey.hex,
        ctermbg = c.dark_grey.cterm,
      },
      PmenuSel = {
        fg = c.white.hex,
        ctermfg = c.white.cterm,
        bg = c.light_purple.hex,
        ctermbg = c.light_purple.cterm,
      },
      PmenuSbar = { bg = c.dark_purple.hex, ctermbg = c.dark_purple.cterm },
      PmenuThumb = { bg = c.grey_purple.hex, ctermbg = c.grey_purple.cterm },
      WildMenu = {
        fg = c.white.hex,
        ctermfg = c.white.cterm,
        bg = c.greyer.hex,
        ctermbg = c.greyer.cterm,
      },
    },

    status = {
      StatusLine = {
        fg = c.cream.hex,
        ctermfg = c.cream.cterm,
        bg = c.dark_grey.hex,
        ctermbg = c.dark_grey.cterm,
      },
      StatusLineTerm = { link = "StatusLine" },
      StatusLineTermNC = {
        fg = c.grey_purple.hex,
        ctermfg = c.grey_purple.cterm,
        bg = c.dark_blue.hex,
        ctermbg = c.dark_blue.cterm,
      },
      StatusLineNC = { link = "StatusLineTermNC" },
      SpellBad = { fg = c.red.hex, underline = true },
      SpellLocal = { fg = c.green.hex, underline = true },
      SpellCap = { fg = c.yellow.hex, underline = true },
      SpellRare = { fg = c.orange.hex, underline = true },
      WarningMsg = {
        fg = c.orange.hex,
        bg = c.blackish.hex,
      },
    },

    tabs = {
      TabLine = {
        fg = c.black.hex,
        ctermfg = c.black.cterm,
        bg = c.grey.hex,
        ctermbg = c.grey.cterm,
      },
      TabLineFill = {
        fg = c.grey.hex,
        ctermfg = c.grey.cterm,
        bg = c.black.hex,
        ctermbg = c.black.cterm,
      },
      TabLineSel = {
        fg = c.greyer.hex,
        ctermfg = c.greyer.cterm,
        bg = c.blackish.hex,
        ctermbg = c.blackish.cterm,
      },
      WinBar = { fg = c.grey.hex, bg = c.blackish.hex },
      WinBarNC = { link = "Muted" },
    },

    visual = {
      CurrentWord = {
        bg = hi().lighten(c.purple.hex, 0.38),
        fg = c.cream.hex,
        italic = true,
        bold = true,
      },
      Visual = { bg = c.dark_grey.hex, ctermbg = c.dark_grey.cterm },
      VisualNOS = { link = "Visual" },
    },

    diff = {
      DiffAdd = { fg = c.green.hex, bg = c.dark_grey.hex },
      DiffChange = { fg = c.orange.hex, bg = c.dark_grey.hex },
      DiffDelete = { fg = c.red.hex, bg = c.dark_grey.hex },
      DiffText = { fg = c.yellow.hex, bg = c.dark_grey.hex },
      diffAdded = { fg = c.green.hex },
      diffRemoved = { fg = c.red.hex },
    },

    syntax = {
      Comment = { fg = c.grey_purple.hex },
      Constant = { fg = c.yellow.hex },
      Identifier = { fg = c.cyan.hex },
      Statement = { fg = c.green.hex },
      PreProc = { fg = c.purple.hex },
      Type = { fg = c.magenta.hex },
      Special = { fg = c.purple.hex },
      Underlined = { fg = c.green.hex, underline = true },
      Error = { fg = c.red.hex },
      Ignore = { fg = c.grey.hex },
      Delimiter = { fg = c.cream.hex },
      Operator = { fg = c.magenta.hex },
      Tag = { fg = c.purple.hex },
      Debug = { fg = c.purple.hex },
      StorageClass = { fg = c.purple.hex },
      String = { fg = c.cyan.hex },
      Structure = { fg = c.cyan.hex },
      Typedef = { fg = c.cyan.hex },
      Function = { fg = c.green.hex, ctermfg = c.green.cterm, bold = true },
      Include = { fg = c.green.hex },
      Label = { fg = c.green.hex },
      Exception = { fg = c.orange.hex },
      Keyword = { fg = c.orange.hex },
      SpecialChar = { fg = c.orange.hex },
      Boolean = { fg = c.yellow.hex },
      Character = { fg = c.yellow.hex },
      Float = { fg = c.yellow.hex },
      Number = { fg = c.yellow.hex },
      Conditional = { fg = c.green.hex },
      Repeat = { fg = c.green.hex },
      Title = { fg = c.purple.hex },
      Define = { fg = c.purple.hex },
      Macro = { fg = c.purple.hex },
      PreCondit = { fg = c.purple.hex },
      Todo = {
        fg = c.white.hex,
        bg = c.yellow.hex,
        underline = true,
      },
    },
  }
end

return M
