-- spaceduck dark palette

local function hi()
  return require('highlighter')
end

local is_dark = vim.o.background == 'dark'

local M = {}

---@param c spaceduck.palette
---@return table<string, palette.HighlightAttrs>
function M.setup(c)
  return {
    -- stylua: ignore start
    palette = {
      -- Foregrounds
      White                 = { fg = c.white.hex       },
      Cream                 = { fg = c.cream.hex       },
      -- Backgrounds
      Black                 = { fg = c.black.hex       },
      Blackish              = { fg = c.blackish.hex    },
      DarkBlue              = { fg = c.dark_blue.hex   },
      DarkGrey              = { fg = c.dark_grey.hex   },
      -- UI & Comments
      Greyer                = { fg = c.greyer.hex      },
      Grey                  = { fg = c.grey.hex        },
      DarkPurple            = { fg = c.dark_purple.hex },
      GreyPurple            = { fg = c.grey_purple.hex },
      -- Accents: Darkened/Saturated for contrast on white
      Purple                = { fg = c.purple.hex      },
      LightPurple           = { fg = c.light_purple.hex},
      Cyan                  = { fg = c.cyan.hex        },
      Green                 = { fg = c.green.hex       },
      Orange                = { fg = c.orange.hex      },
      Red                   = { fg = c.red.hex         },
      Yellow                = { fg = c.yellow.hex      },
      Magenta               = { fg = c.magenta.hex     },
    },
    colors = {
      RedItalic             = { fg = c.red.hex,        italic = true     },
      RedBold               = { fg = c.red.hex,        bold = true       },

      YellowItalic          = { fg = c.yellow.hex,     italic = true     },
      YellowBold            = { fg = c.yellow.hex,     bold = true       },

      BlueItalic            = { fg = c.purple.hex,     italic = true     },
      BlueBold              = { fg = c.purple.hex,     bold = true       },

      MagentaItalic         = { fg = c.magenta.hex,    italic = true     },
      MagentaBold           = { fg = c.magenta.hex,    bold = true       },
      PurpleItalic          = { fg = c.magenta.hex,    italic = true     },

      GreenItalic           = { fg = c.green.hex,      italic = true     },
      GreenBold             = { fg = c.green.hex,      bold = true       },

      OrangeItalic          = { fg = c.orange.hex,     italic = true     },

      CyanItalic            = { fg = c.cyan.hex,       italic = true     },

      Muted                 = is_dark and { fg = M.darken(c.cream.hex, 0.18, c.blackish.hex) } or { link = 'Comment' },
    },
    buttons = {
      BtnRed                = { bg = hi().tone(c.red.hex,    0.50, 0.40),                       bold = true },
      BtnRedSolid           = { fg = c.red.hex,    bg = hi().tone(c.red.hex,    0.50, 0.40),    bold = true },
      BtnOrange             = { bg = hi().tone(c.orange.hex, 0.80, 0.70),                       bold = true },
      BtnOrangeSolid        = { fg = c.orange.hex, bg = hi().tone(c.orange.hex, 0.50, 0.70),    bold = true },
      BtnBlue               = { bg = hi().tone(c.purple.hex,   0.50, 0.40),                     bold = true },
      BtnBlueSolid          = { fg = c.purple.hex, bg = hi().tone(c.purple.hex,   0.50, 0.40),  bold = true },
      BtnMutedSolid         = { fg = c.grey.hex,   bg = hi().darken(c.grey.hex, 0.24, c.blackish.hex), bold = true },
    },
    elements = {
      NormalFloat           = { bg = c.blackish.hex    },
    },
    diff = {
      Added                 = { fg = c.green.hex,  bg = vim.o.diff and hi().darken(c.green.hex, 0.05, c.blackish.hex) or nil},
      Changed               = { fg = c.purple.hex, bg = vim.o.diff and hi().darken(c.purple.hex, 0.05, c.blackish.hex) or nil },
      Removed               = { fg = c.red.hex,    bg = vim.o.diff and hi().darken(c.red.hex, 0.05, c.blackish.hex) or nil  },
      diffAdded             = { fg = c.green.hex,  bg = hi().darken(c.green.hex, 0.05, c.blackish.hex)                      },
      DiffAdd               = { fg = c.green.hex,  bg = hi().darken(c.green.hex, 0.05, c.blackish.hex)                      },
      DiffChange            = { fg = c.purple.hex, bg = hi().darken(c.purple.hex, 0.05, c.blackish.hex)                     },
      DiffRemoved           = { fg = c.red.hex,    bg = hi().darken(c.red.hex, 0.05, c.blackish.hex)                        },
      DiffDelete            = { fg = c.red.hex,    bg = hi().darken(c.red.hex, 0.05, c.blackish.hex)                        },
      diffSubname           = { fg = c.purple.hex, bg = hi().darken(c.purple.hex, 0.05, c.blackish.hex)                     },
      diffLine              = { link = 'DiffRemoved'},
    },
    signs = {
      RedSign               = { link = 'Red'                },
      YellowSign            = { link = 'Yellow'             },
      BlueSign              = { link = 'LightPurple'        },
      PurpleSign            = { link = 'Purple'             },
      GreenSign             = { link = 'Green'              },
    },
    ['lsp.diagnostics'] = {
      DiagnosticError       = { link = 'Red'          },
      DiagnosticWarn        = { link = 'Yellow'       },
      DiagnosticInfo        = { link = 'LightPurple'  },
      DiagnosticHint        = { link = 'Purple'       },
      DiagnosticOk          = { link = 'Cyan'         },
      -- underline
      DiagnosticUnderlineError  = { sp = c.red.hex,        undercurl = true },
      DiagnosticUnderlineWarn   = { sp = c.yellow.hex,     undercurl = true },
      DiagnosticUnderlineInfo   = { sp = c.dark_blue.hex,  undercurl = true },
      DiagnosticUnderlineHint   = { sp = c.cyan.hex,       undercurl = true },
      -- floating
      DiagnosticFloatingError   = { link = 'ErrorMsg'   },
      DiagnosticFloatingWarn    = { link = 'WarningMsg' },
      DiagnosticFloatingInfo    = { link = 'InfoMsg'    },
      DiagnosticFloatingHint    = { link = 'HintMsg'    },
      -- signs
      DiagnosticSignError       = { link = 'RedSign'    },
      DiagnosticSignWarn        = { link = 'YellowSign' },
      DiagnosticSignInfo        = { link = 'BlueSign'   },
      DiagnosticSignHint        = { link = 'BrightBlue' },
      DiagnosticSignOk          = { link = 'GreenSign'  },
      -- lsp floating
      LspDiagnosticsFloatingError         = { link = 'DiagnosticFloatingError'  },
      LspDiagnosticsFloatingWarning       = { link = 'DiagnosticFloatingWarn'   },
      LspDiagnosticsFloatingInformation   = { link = 'DiagnosticFloatingInfo'   },
      LspDiagnosticsFloatingHint          = { link = 'DiagnosticFloatingHint'   },
      -- lsp diagnostics defaults
      LspDiagnosticsDefaultError          = { link = 'DiagnosticError'  },
      LspDiagnosticsDefaultWarning        = { link = 'DiagnosticWarn'   },
      LspDiagnosticsDefaultInformation    = { link = 'DiagnosticInfo'   },
      LspDiagnosticsDefaultHint           = { link = 'DiagnosticHint'   },
      -- virtual text
      LspDiagnosticsVirtualTextError      = { link = 'DiagnosticVirtualTextError' },
      LspDiagnosticsVirtualTextWarning    = { link = 'DiagnosticVirtualTextWarn'  },
      LspDiagnosticsVirtualTextInformation= { link = 'DiagnosticVirtualTextInfo' },
      LspDiagnosticsVirtualTextHint       = { link = 'DiagnosticVirtualTextHint'  },
      -- underline
      LspDiagnosticsUnderlineError        = { link = 'DiagnosticUnderlineError' },
      LspDiagnosticsUnderlineWarning      = { link = 'DiagnosticUnderlineWarn'  },
      LspDiagnosticsUnderlineInformation  = { link = 'DiagnosticUnderlineInfo'  },
      LspDiagnosticsUnderlineHint         = { link = 'DiagnosticUnderlineHint'  },
      -- lsp sings
      LspDiagnosticsSignError             = { link = 'DiagnosticSignError'  },
      LspDiagnosticsSignWarning           = { link = 'DiagnosticSignWarn'   },
      LspDiagnosticsSignInformation       = { link = 'DiagnosticSignInfo'   },
      LspDiagnosticsSignHint              = { link = 'DiagnosticSignHint'   },
      -- lsp reference
      LspReferenceText                    = { link = 'CurrentWord' },
      LspReferenceRead                    = { link = 'CurrentWord' },
      LspReferenceWrite                   = { link = 'CurrentWord' },
    },
    virtualtext = {
      VirtualTextWarning                  = { link = 'DiagnosticWarn'      },
      VirtualTextError                    = { link = 'DiagnosticError'     },
      VirtualTextInfo                     = { link = 'DiagnosticInfo'      },
      VirtualTextHint                     = { link = 'DiagnosticHint'      },
      DiagnosticVirtualTextError          = { link = 'VirtualTextError'    },
      DiagnosticVirtualTextWarn           = { link = 'VirtualTextWarning'  },
      DiagnosticVirtualTextInfo           = { link = 'VirtualTextInfo'     },
      DiagnosticVirtualTextHint           = { link = 'VirtualTextHint'     },
    },
    lsp = {
      InlayHints                          = { fg = c.grey_purple.hex },
      LspInlayHint                        = { link = "InlayHints"         },
      LspCodeLens                         = { link = "VirtualTextInfo"    },
      LspCodeLensSeparator                = { link = "VirtualTextHint"    },
      LspSignatureActiveParameter         = { link = "Search"             },
      -- semantic tokens
      ["@lsp.type.variable"]              = { link = "@variable"          },
      ["@lsp.type.parameter"]             = { link = "Identifier"         },
      ["@lsp.type.namespace"]             = { link = "@module"            },
      ["@lsp.typemod.variable.readonly"]  = { link = "BrightMagenta"      },
      ["@lsp.type.class"]                 = { link = "Yellow"             },
    },
    health = {
      healthError                         = { link = 'Red'                },
      healthSuccess                       = { link = 'Green'              },
      healthWarning                       = { link = 'Yellow'             },
    },

    lang = {
      cFormat                             = { link = 'Title'    },
      cCppOutIf1                          = { link = 'Normal'   },
      cCppOutIf2                          = { link = 'Normal'   },
      cBracket                            = { link = 'Title'    },
      cssBraces                           = { link = 'Normal' },
      cssSelectorOp                       = { link = 'Operator' },
      fortranType                         = { link = 'Tag' },
      fortranStructure                    = { link = 'Structure' },
      fortranStorageClass                 = { link = 'StorageClass' },
      fortranUnitHeader                   = { link = 'Title' },
      haskellType                         = { link = 'Tag' },
      haskellIdentifier                   = { link = 'Label' },
      haskellKeyword                      = { link = 'Boolean' },
      haskellDecl                         = { link = 'Boolean' },
      htmlTagName                         = { link = 'Function' },
      htmlEndTag                          = { link = 'Conditional' },
      htmlArg                             = { link = 'Tag' },
      htmlSpecialTagName                  = { link = 'Type' },
      javaClassDecl                       = { link = 'Structure' },
      javaTypeDef                         = { link = 'Keyword' },
      jsStorageClass                      = { link = 'Title' },
      jsFunction                          = { link = 'Function' },
      jsFuncName                          = { link = 'Special' },
      jsOperator                          = { link = 'Operator' },
      jsNull                              = { link = 'Constant' },
      jsGlobalObjects                     = { link = 'Constant' },
      jsFuncCall                          = { link = 'Function' },
      jsOperatorKeyword                   = { link = 'Operator' },
      jsExceptions                        = { link = 'Error' },
      jsTernaryIfOperator                 = { link = 'Title' },
      jsTemplateBraces                    = { link = 'Title' },
      jsTemplateExpression                = { link = 'String' },
      texTypeStyle                        = { link = 'Special' },
      mkdDelimiter                        = { link = 'Normal' },
      phpFunction                         = { link = 'Function' },
      phpMethod                           = { link = 'Function' },
      phpType                             = { link = 'Constant' },
      phpIdentifier                       = { link = 'Type' },
      phpStringSingle                     = { link = 'String' },
      phpStringDouble                     = { link = 'String' },
      pythonOperator                      = { link = 'Operator' },
      rubyConstant                        = { link = 'Constant' },
      rubyDefine                          = { link = 'Define' },
      rubyMethodName                      = { link = 'Function' },
      rubyInstanceVariable                = { link = 'Tag' },
      rubyKeywordAsMethod                 = { link = 'Tag' },
      jsxTagName                          = { link = 'HTMLTagName' },
      jsxComponentName                    = { link = 'Tag' },
      jsxOpenPunct                        = { link = 'jsxTagName' },
      jsxClosePunct                       = { link = 'jsxOpenPunct' },
      jsxCloseString                      = { link = 'jsxClosePunct' },
      typescriptProp                      = { link = 'Tag' },
      typescriptVariable                  = { link = 'Title' },
      typescriptArrowFunc                 = { link = 'Operator' },
      typescriptBraces                    = { link = 'Normal' },
      vimGroupName                        = { link = 'Normal' },
      yamlKeyValueDelimiter               = { link = 'Normal' },
      yamlBlockMappingKey                 = { link = 'Function' },
      vistaTag                            = { link = 'Conditional' },
      vistaIcon                           = { link = 'Identifier' },
      vistaColon                          = { link = 'Normal' },
      vistaScope                          = { link = 'Constant' },
      vistaKind                           = { link = 'Conditional' },
    },

    -- stylua: ignore end
  }
end

return M
