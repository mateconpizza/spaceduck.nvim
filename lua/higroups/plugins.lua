local M = {}

---@param c spaceduck.palette
---@return table<string, palette.HighlightAttrs>
function M.setup(c)
  return {
    -- stylua: ignore start
    ["nvim-treesitter/nvim-treesitter"] = {
      ["@variable.member"]              = { link = "Purple"       },
      ["@constant"]                     = { link = "Magenta"      },
      ["@keyword.import"]               = { link = "Keyword"      },
      ["@keyword.type"]                 = { link = "Keyword"      },
      ["@module"]                       = { link = "Yellow"       },
      Type                              = { link = "Yellow"       },
      ["@type.definition"]              = { link = "Type"         },
      ["@constant.builtin"]             = { link = "PurpleItalic" },
      ["@property"]                     = { link = "@variable"    },

      -- todo comments
      ["@comment.error.comment"]        = { link = "RedBold"      },
      ["@comment.warning.comment"]      = { link = "YellowBold"   },
      ["@comment.todo.comment"]         = { link = "PurpleBold"   },
      ["@comment.note.comment"]         = { link = "PurpleBold"   },
    },

    ["folke/lazy.nvim"] = {
      LazyButtonActive                  = { link = "BtnPurple"        },
      LazyH1                            = { link = "LazyButtonActive" },
      LazySpecial                       = { link = "Cyan" },
    },

    ["williamboman/mason.nvim"] = {
      MasonHeader                       = { link = "BtnGreyPurple"            },
      MasonHighlightBlockBold           = { link = "BtnPurple"                },
      MasonHeaderSecondary              = { link = "MasonHighlightBlockBold"  },
      MasonHighlight                    = { link = "Directory"                },
      MasonMutedBlock                   = { link = "BtnMutedSolid"            },
      MasonHighlightSecondary           = { link = "BtnGreyPurple"            },
      MasonHighlightBlockBoldSecondary  = { link = "BtnGreyPurple"            },
    },

    ["ibhagwan/fzf-lua"] = {
      FzfLuaBorder                      = { fg = c.dark_grey.hex,  bold = true  },
      FzfLuaTitle                       = { fg = c.orange.hex,     bold = true  },
      FzfLuaFzfBorder                   = { link = "FzfLuaBorder"               },
    },

    ["nvim-mini/mini.icons"] = {
      MiniIconsAzure                    = { link = "Purple" },
      MiniIconsGrey                     = { link = "LightPurple" },
    },

    ["echasnovski/mini.clue"] = {
      MiniClueTitle                     = { link = "BtnPurpleSolid" },
      MiniClueSeparator                 = { link = "RetroboxDimmer" },
    },

    ["nvim-neotest/neotest"] = {
      NeotestAdapterName                = { link = "Keyword" },
      NeotestBorder                     = { link = "Keyword" },
      NeotestPassed                     = { link = "GreenSign" },
      NeotestFailed                     = { link = "RedSign" },
      NeotestRunning                    = { link = "YellowSign" },
      NeotestSkipped                    = { link = "BlueSign" },
      NeotestFile                       = { link = "YellowSign" },
      NeotestDir                        = { link = "YellowSign" },
    },

    ["stevearc/oil.nvim"] = {
      OilTrash                          = { link = "Red" },
      OilPurge                          = { link = "Orange" },
      OilCreate                         = { link = "Purple" },
    },

    ["lewis6991/gitsigns.nvim"] = {
      GitSignsDeleteInline              = { reverse = true },
      GitSignsAddInline                 = { reverse = true },
      GitSignsChangeInline              = { reverse = true },
    },
    -- stylua: ignore end
  }
end

return M
