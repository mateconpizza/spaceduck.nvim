-- spaceduck dark palette

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
        fg = c.blackish.hex,
        ctermfg = c.blackish.cterm,
        bg = c.grey.hex,
        ctermbg = c.grey.cterm,
      },
      CursorIM = { link = "Cursor" },
      CursorLine = {
        bg = c.dark_blue.hex,
        ctermfg = c.dark_blue.cterm,
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
        bg = c.blackish.hex,
        ctermbg = c.blackish.cterm,
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
        bg = c.dark_purple.hex,
        ctermbg = c.dark_purple.cterm,
      },
      LineNr = {
        fg = c.dark_purple.hex,
        ctermfg = c.dark_purple.cterm,
        bg = c.blackish.hex,
        ctermbg = c.blackish.cterm,
      },
      MatchParen = {
        fg = c.white.hex,
        ctermfg = c.white.cterm,
        bg = hi().darken(c.dark_purple.hex, 0.50, c.dark_purple.hex),
        ctermbg = c.dark_purple.cterm,
        bold = true,
      },
      ModeMsg = { fg = c.light_purple.hex, ctermfg = c.light_purple.cterm },
      MoreMsg = { fg = c.light_purple.hex, ctermfg = c.light_purple.cterm },
      NonText = { link = "EndOfBuffer" },
      Question = { fg = c.light_purple.hex, ctermfg = c.light_purple.cterm },
      QuickFixLine = {
        fg = c.cream.hex,
        ctermfg = c.cream.cterm,
        bg = c.dark_blue.hex,
        ctermbg = c.dark_blue.cterm,
      },
      Search = {
        fg = c.white.hex,
        ctermfg = c.white.cterm,
        bg = c.grey_purple.hex,
        ctermbg = c.grey_purple.cterm,
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
        bg = c.dark_purple.hex,
        ctermbg = c.dark_purple.cterm,
      },
      PmenuSbar = { bg = c.dark_purple.hex, ctermbg = c.dark_purple.cterm },
      PmenuThumb = { bg = c.grey_purple.hex, ctermbg = c.grey_purple.cterm },
      WildMenu = {
        fg = c.black.hex,
        ctermfg = c.black.cterm,
        bg = c.greyer.hex,
        ctermbg = c.greyer.cterm,
      },
    },

    status = {
      StatusLine = {
        fg = c.cream.hex,
        ctermfg = c.cream.cterm,
        bg = c.blackish.hex,
        ctermbg = c.blackish.cterm,
        reverse = true,
      },
      StatusLineTerm = { link = "StatusLine" },
      StatusLineTermNC = {
        fg = c.black.hex,
        ctermfg = c.black.cterm,
        bg = c.dark_purple.hex,
        ctermbg = c.dark_purple.cterm,
        reverse = true,
      },
      StatusLineNC = { link = "StatusLineTermNC" },
      SpellBad = { fg = c.red.hex, ctermfg = c.red.cterm, underline = true },
      SpellLocal = { fg = c.cream.hex, ctermfg = c.cream.cterm, underline = true },
      SpellCap = { fg = c.green.hex, ctermfg = c.green.cterm, underline = true },
      SpellRare = { fg = c.yellow.hex, ctermfg = c.yellow.cterm, underline = true },
      WarningMsg = {
        fg = c.orange.hex,
        ctermfg = c.orange.cterm,
        bg = c.blackish.hex,
        ctermbg = c.blackish.cterm,
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
    },

    visual = {
      Visual = { bg = c.dark_grey.hex, ctermbg = c.dark_grey.cterm },
      VisualNOS = { link = "Visual" },
    },

    diff = {
      DiffAdd = {
        fg = c.green.hex,
        ctermfg = c.green.cterm,
        bg = c.dark_grey.hex,
        ctermbg = c.dark_grey.cterm,
      },
      DiffChange = {
        fg = c.orange.hex,
        ctermfg = c.orange.cterm,
        bg = c.dark_grey.hex,
        ctermbg = c.dark_grey.cterm,
      },
      DiffDelete = {
        fg = c.red.hex,
        ctermfg = c.red.cterm,
        bg = c.dark_grey.hex,
        ctermbg = c.dark_grey.cterm,
      },
      DiffText = {
        fg = c.yellow.hex,
        ctermfg = c.yellow.cterm,
        bg = c.dark_grey.hex,
        ctermbg = c.dark_grey.cterm,
      },
      diffAdded = { fg = c.light_purple.hex, ctermfg = c.light_purple.cterm },
      diffRemoved = { fg = c.red.hex, ctermfg = c.red.cterm },
    },

    syntax = {
      Comment = { fg = c.dark_purple.hex, ctermfg = c.dark_purple.cterm },
      Constant = { fg = c.yellow.hex, ctermfg = c.yellow.cterm },
      Identifier = { fg = c.cyan.hex, ctermfg = c.cyan.cterm },
      Statement = { fg = c.green.hex, ctermfg = c.green.cterm },
      PreProc = { fg = c.light_purple.hex, ctermfg = c.light_purple.cterm },
      Type = { fg = c.magenta.hex, ctermfg = c.magenta.cterm },
      Special = { fg = c.light_purple.hex, ctermfg = c.light_purple.cterm },
      Underlined = { fg = c.green.hex, ctermfg = c.green.cterm, underline = true },
      Error = { fg = c.red.hex, ctermfg = c.red.cterm },
      Ignore = { fg = c.red.hex, ctermfg = c.red.cterm },
      Delimiter = { fg = c.cream.hex, ctermfg = c.cream.cterm },
      Operator = { fg = c.magenta.hex, ctermfg = c.magenta.cterm },
      Tag = { fg = c.light_purple.hex, ctermfg = c.light_purple.cterm },
      Debug = { fg = c.light_purple.hex, ctermfg = c.light_purple.cterm },
      StorageClass = { fg = c.light_purple.hex, ctermfg = c.light_purple.cterm },
      String = { fg = c.cyan.hex, ctermfg = c.cyan.cterm },
      Structure = { fg = c.cyan.hex, ctermfg = c.cyan.cterm },
      Typedef = { fg = c.cyan.hex, ctermfg = c.cyan.cterm },
      Function = { fg = c.green.hex, ctermfg = c.green.cterm },
      Include = { fg = c.green.hex, ctermfg = c.green.cterm },
      Label = { fg = c.green.hex, ctermfg = c.green.cterm },
      Exception = { fg = c.orange.hex, ctermfg = c.orange.cterm },
      Keyword = { fg = c.orange.hex, ctermfg = c.orange.cterm },
      SpecialChar = { fg = c.orange.hex, ctermfg = c.orange.cterm },
      Boolean = { fg = c.yellow.hex, ctermfg = c.yellow.cterm },
      Character = { fg = c.yellow.hex, ctermfg = c.yellow.cterm },
      Float = { fg = c.yellow.hex, ctermfg = c.yellow.cterm },
      FloatBorder = { fg = c.dark_grey.hex, bold = true },
      Number = { fg = c.yellow.hex, ctermfg = c.yellow.cterm },
      Conditional = { fg = c.green.hex, ctermfg = c.green.cterm },
      Repeat = { fg = c.green.hex, ctermfg = c.green.cterm },
      Title = { fg = c.purple.hex, ctermfg = c.purple.cterm },
      Define = { fg = c.purple.hex, ctermfg = c.purple.cterm },
      Macro = { fg = c.purple.hex, ctermfg = c.purple.cterm },
      PreCondit = { fg = c.purple.hex, ctermfg = c.purple.cterm },
      SpecialComment = { link = "Comment" },
      Todo = {
        fg = c.white.hex,
        ctermfg = c.white.cterm,
        bg = c.grey_purple.hex,
        ctermbg = c.grey_purple.cterm,
        underline = true,
      },
    },

    buffer = {
      BufferCurrent = {
        fg = c.greyer.hex,
        ctermfg = c.greyer.cterm,
        bg = c.blackish.hex,
        ctermbg = c.blackish.cterm,
      },
      BufferVisible = {
        fg = c.dark_purple.hex,
        ctermfg = c.dark_purple.cterm,
        bg = c.blackish.hex,
        ctermbg = c.blackish.cterm,
      },
      BufferInactive = {
        fg = c.dark_purple.hex,
        ctermfg = c.dark_purple.cterm,
        bg = c.blackish.hex,
        ctermbg = c.blackish.cterm,
      },
      BufferTabpageFill = {
        fg = c.blackish.hex,
        ctermfg = c.blackish.cterm,
        bg = c.blackish.hex,
        ctermbg = c.blackish.cterm,
      },
      BufferCurrentIndex = {
        fg = c.green.hex,
        ctermfg = c.green.cterm,
        bg = c.blackish.hex,
        ctermbg = c.blackish.cterm,
      },
      BufferVisibleIndex = {
        fg = c.dark_purple.hex,
        ctermfg = c.dark_purple.cterm,
        bg = c.blackish.hex,
        ctermbg = c.blackish.cterm,
      },
      BufferInactiveIndex = {
        fg = c.dark_purple.hex,
        ctermfg = c.dark_purple.cterm,
        bg = c.blackish.hex,
        ctermbg = c.blackish.cterm,
      },
      BufferCurrentMod = {
        fg = c.orange.hex,
        ctermfg = c.orange.cterm,
        bg = c.blackish.hex,
        ctermbg = c.blackish.cterm,
      },
      BufferVisibleMod = {
        fg = c.orange.hex,
        ctermfg = c.orange.cterm,
        bg = c.blackish.hex,
        ctermbg = c.blackish.cterm,
      },
      BufferInactiveMod = {
        fg = c.orange.hex,
        ctermfg = c.orange.cterm,
        bg = c.blackish.hex,
        ctermbg = c.blackish.cterm,
      },
      BufferCurrentSign = {
        fg = c.green.hex,
        ctermfg = c.green.cterm,
        bg = c.blackish.hex,
        ctermbg = c.blackish.cterm,
      },
      BufferVisibleSign = {
        fg = c.dark_purple.hex,
        ctermfg = c.dark_purple.cterm,
        bg = c.blackish.hex,
        ctermbg = c.blackish.cterm,
      },
      BufferInactiveSign = {
        fg = c.dark_purple.hex,
        ctermfg = c.dark_purple.cterm,
        bg = c.blackish.hex,
        ctermbg = c.blackish.cterm,
      },
      BufferCurrentTarget = {
        fg = c.magenta.hex,
        ctermfg = c.magenta.cterm,
        bg = c.blackish.hex,
        ctermbg = c.blackish.cterm,
      },
      BufferVisibleTarget = {
        fg = c.magenta.hex,
        ctermfg = c.magenta.cterm,
        bg = c.blackish.hex,
        ctermbg = c.blackish.cterm,
      },
      BufferInactiveTarget = {
        fg = c.magenta.hex,
        ctermfg = c.magenta.cterm,
        bg = c.blackish.hex,
        ctermbg = c.blackish.cterm,
      },
    },
  }
end

return M
