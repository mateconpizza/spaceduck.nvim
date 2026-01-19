-- spaceduck light palette

local function hi()
  return require('highlighter')
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
      ColorColumn = { bg = c.dark_blue.hex, ctermbg = c.dark_blue.cterm },
      CursorColumn = { bg = c.dark_blue.hex, ctermbg = c.dark_blue.cterm },
      Conceal = { fg = c.grey.hex, ctermfg = c.grey.cterm },
      Cursor = {
        fg = c.blackish.hex,
        ctermfg = c.blackish.cterm,
        bg = c.cream.hex,
        ctermbg = c.cream.cterm,
      },
      CursorIM = { link = 'Cursor' },
      CursorLine = { bg = c.dark_blue.hex, ctermfg = c.dark_blue.cterm },
      CursorLineNr = {
        fg = c.purple.hex,
        ctermfg = c.purple.cterm,
        bg = c.dark_blue.hex,
        ctermbg = c.dark_blue.cterm,
      },
      LineNr = {
        fg = c.greyer.hex,
        ctermfg = c.greyer.cterm,
        bg = c.blackish.hex,
        ctermbg = c.blackish.cterm,
      },
      Directory = { fg = c.cyan.hex, ctermfg = c.cyan.cterm },
      EndOfBuffer = {
        fg = c.dark_blue.hex,
        ctermfg = c.dark_blue.cterm,
        bg = c.blackish.hex,
        ctermbg = c.blackish.cterm,
      },
      TermCursor = { link = 'Cursor' },
      ErrorMsg = { fg = c.red.hex, ctermfg = c.red.cterm },
      VertSplit = {
        fg = c.greyer.hex,
        ctermfg = c.greyer.cterm,
        bg = c.blackish.hex,
        ctermbg = c.blackish.cterm,
      },
      Folded = {
        fg = c.grey.hex,
        ctermfg = c.grey.cterm,
        bg = c.dark_blue.hex,
        ctermbg = c.dark_blue.cterm,
      },
      FoldColumn = {
        fg = c.grey.hex,
        ctermfg = c.grey.cterm,
        bg = c.blackish.hex,
        ctermbg = c.blackish.cterm,
      },
      SignColumn = {
        fg = c.grey.hex,
        ctermfg = c.grey.cterm,
        bg = c.blackish.hex,
        ctermbg = c.blackish.cterm,
      },
      IncSearch = {
        fg = c.blackish.hex,
        ctermfg = c.blackish.cterm,
        bg = c.orange.hex,
        ctermbg = c.orange.cterm,
      },
      MatchParen = {
        fg = c.blackish.hex,
        ctermfg = c.blackish.cterm,
        bg = hi().lighten(c.orange.hex, 0.50, c.orange.hex),
        ctermbg = c.dark_purple.cterm,
        bold = true,
      },
      ModeMsg = { fg = c.purple.hex, ctermfg = c.purple.cterm },
      MoreMsg = { fg = c.purple.hex, ctermfg = c.purple.cterm },
      NonText = { link = 'EndOfBuffer' },
      Question = { fg = c.purple.hex, ctermfg = c.purple.cterm },
      QuickFixLine = {
        fg = c.cream.hex,
        ctermfg = c.cream.cterm,
        bg = c.dark_purple.hex,
        ctermbg = c.dark_purple.cterm,
      },
      Search = {
        fg = c.blackish.hex,
        ctermfg = c.blackish.cterm,
        bg = c.light_purple.hex,
        ctermbg = c.light_purple.cterm,
      },
      SpecialKey = {
        fg = c.greyer.hex,
        ctermfg = c.greyer.cterm,
        bg = c.blackish.hex,
        ctermbg = c.blackish.cterm,
      },
      Whitespace = { link = 'EndOfBuffer' },
      WinSeparator = { link = 'VertSplit' },
    },

    menu = {
      Pmenu = {
        fg = c.cream.hex,
        ctermfg = c.cream.cterm,
        bg = c.dark_blue.hex,
        ctermbg = c.dark_blue.cterm,
      },
      PmenuSel = {
        fg = c.blackish.hex,
        ctermfg = c.blackish.cterm,
        bg = c.dark_purple.hex,
        ctermbg = c.dark_purple.cterm,
      },
      PmenuSbar = { bg = c.greyer.hex, ctermbg = c.greyer.cterm },
      PmenuThumb = { bg = c.grey.hex, ctermbg = c.grey.cterm },
      WildMenu = {
        fg = c.blackish.hex,
        ctermfg = c.blackish.cterm,
        bg = c.dark_purple.hex,
        ctermbg = c.dark_purple.cterm,
      },
    },

    status = {
      StatusLine = {
        fg = c.cream.hex,
        ctermfg = c.cream.cterm,
        bg = c.dark_grey.hex,
        ctermbg = c.dark_grey.cterm,
        reverse = false,
      },
      StatusLineTerm = { link = 'StatusLine' },
      StatusLineTermNC = {
        fg = c.grey.hex,
        ctermfg = c.grey.cterm,
        bg = c.dark_blue.hex,
        ctermbg = c.dark_blue.cterm,
        reverse = false,
      },
      StatusLineNC = { link = 'StatusLineTermNC' },
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
        fg = c.grey.hex,
        ctermfg = c.grey.cterm,
        bg = c.dark_blue.hex,
        ctermbg = c.dark_blue.cterm,
      },
      TabLineFill = {
        fg = c.grey.hex,
        ctermfg = c.grey.cterm,
        bg = c.blackish.hex,
        ctermbg = c.blackish.cterm,
      },
      TabLineSel = {
        fg = c.blackish.hex,
        ctermfg = c.blackish.cterm,
        bg = c.dark_purple.hex,
        ctermbg = c.dark_purple.cterm,
      },
    },

    visual = {
      Visual = { bg = c.dark_purple.hex, ctermbg = c.dark_purple.cterm },
      VisualNOS = { link = 'Visual' },
    },

    diff = {
      DiffAdd = {
        fg = c.green.hex,
        ctermfg = c.green.cterm,
        bg = c.dark_blue.hex,
        ctermbg = c.dark_blue.cterm,
      },
      DiffChange = {
        fg = c.orange.hex,
        ctermfg = c.orange.cterm,
        bg = c.dark_blue.hex,
        ctermbg = c.dark_blue.cterm,
      },
      DiffDelete = {
        fg = c.red.hex,
        ctermfg = c.red.cterm,
        bg = c.dark_blue.hex,
        ctermbg = c.dark_blue.cterm,
      },
      DiffText = {
        fg = c.yellow.hex,
        ctermfg = c.yellow.cterm,
        bg = c.dark_blue.hex,
        ctermbg = c.dark_blue.cterm,
      },
      diffAdded = { fg = c.green.hex, ctermfg = c.green.cterm },
      diffRemoved = { fg = c.red.hex, ctermfg = c.red.cterm },
    },

    syntax = {
      Comment = { fg = c.grey.hex, ctermfg = c.grey.cterm },
      Constant = { fg = c.orange.hex, ctermfg = c.orange.cterm },
      Identifier = { fg = c.cyan.hex, ctermfg = c.cyan.cterm },
      Statement = { fg = c.purple.hex, ctermfg = c.purple.cterm },
      PreProc = { fg = c.magenta.hex, ctermfg = c.magenta.cterm },
      Type = { fg = c.cyan.hex, ctermfg = c.cyan.cterm },
      Special = { fg = c.orange.hex, ctermfg = c.orange.cterm },
      Underlined = { fg = c.light_purple.hex, ctermfg = c.light_purple.cterm, underline = true },
      Error = { fg = c.red.hex, ctermfg = c.red.cterm },
      Ignore = { fg = c.red.hex, ctermfg = c.red.cterm },
      Delimiter = { fg = c.grey.hex, ctermfg = c.grey.cterm },
      Operator = { fg = c.greyer.hex, ctermfg = c.greyer.cterm },
      Tag = { fg = c.light_purple.hex, ctermfg = c.light_purple.cterm },
      Debug = { fg = c.orange.hex, ctermfg = c.orange.cterm },
      StorageClass = { fg = c.purple.hex, ctermfg = c.purple.cterm },
      String = { fg = c.green.hex, ctermfg = c.green.cterm },
      Structure = { fg = c.purple.hex, ctermfg = c.purple.cterm },
      Typedef = { fg = c.purple.hex, ctermfg = c.purple.cterm },
      Function = { fg = c.light_purple.hex, ctermfg = c.light_purple.cterm },
      Include = { fg = c.magenta.hex, ctermfg = c.magenta.cterm },
      Label = { fg = c.light_purple.hex, ctermfg = c.light_purple.cterm },
      Exception = { fg = c.red.hex, ctermfg = c.red.cterm },
      Keyword = { fg = c.purple.hex, ctermfg = c.purple.cterm },
      SpecialChar = { fg = c.orange.hex, ctermfg = c.orange.cterm },
      Boolean = { fg = c.orange.hex, ctermfg = c.orange.cterm },
      Character = { fg = c.green.hex, ctermfg = c.green.cterm },
      Float = { fg = c.orange.hex, ctermfg = c.orange.cterm },
      FloatBorder = { fg = c.dark_grey.hex, bold = true },
      Number = { fg = c.orange.hex, ctermfg = c.orange.cterm },
      Conditional = { fg = c.purple.hex, ctermfg = c.purple.cterm },
      Repeat = { fg = c.purple.hex, ctermfg = c.purple.cterm },
      Title = { fg = c.red.hex, ctermfg = c.red.cterm },
      Define = { fg = c.magenta.hex, ctermfg = c.magenta.cterm },
      Macro = { fg = c.magenta.hex, ctermfg = c.magenta.cterm },
      PreCondit = { fg = c.magenta.hex, ctermfg = c.magenta.cterm },
      SpecialComment = { link = 'Comment' },
      Todo = {
        fg = c.purple.hex,
        ctermfg = c.purple.cterm,
        bg = c.dark_purple.hex,
        ctermbg = c.dark_purple.cterm,
        underline = true,
      },
    },

    buffer = {
      BufferCurrent = { fg = c.cream.hex, ctermfg = c.cream.cterm, bg = c.blackish.hex, ctermbg = c.blackish.cterm },
      BufferVisible = { fg = c.grey.hex, ctermfg = c.grey.cterm, bg = c.dark_blue.hex, ctermbg = c.dark_blue.cterm },
      BufferInactive = { fg = c.grey.hex, ctermfg = c.grey.cterm, bg = c.dark_blue.hex, ctermbg = c.dark_blue.cterm },
      BufferTabpageFill = {
        fg = c.dark_blue.hex,
        ctermfg = c.dark_blue.cterm,
        bg = c.dark_blue.hex,
        ctermbg = c.dark_blue.cterm,
      },
      BufferCurrentIndex = {
        fg = c.green.hex,
        ctermfg = c.green.cterm,
        bg = c.blackish.hex,
        ctermbg = c.blackish.cterm,
      },
      BufferVisibleIndex = {
        fg = c.grey.hex,
        ctermfg = c.grey.cterm,
        bg = c.dark_blue.hex,
        ctermbg = c.dark_blue.cterm,
      },
      BufferInactiveIndex = {
        fg = c.grey.hex,
        ctermfg = c.grey.cterm,
        bg = c.dark_blue.hex,
        ctermbg = c.dark_blue.cterm,
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
        bg = c.dark_blue.hex,
        ctermbg = c.dark_blue.cterm,
      },
      BufferInactiveMod = {
        fg = c.orange.hex,
        ctermfg = c.orange.cterm,
        bg = c.dark_blue.hex,
        ctermbg = c.dark_blue.cterm,
      },
    },
  }
end

return M
