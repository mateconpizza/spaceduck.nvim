local M = {}

---@param c spaceduck.palette
---@return table<string, palette.HighlightAttrs>
function M.setup(c)
  return {
    -- stylua: ignore start
    ["nvim-treesitter/nvim-treesitter"] = {
      ["@variable.member"]              = { link = "Purple"       },
      ["@constant"]                     = { link = "Magenta"      },
      ["@keyword.import"]               = { link = "Red"          },
      ["@keyword.type"]                 = { link = "Red"          },
      ["@module"]                       = { link = "Yellow"       },
      Type                              = { link = "Yellow"       },
      ["@constant.builtin"]             = { link = "PurpleItalic" },
      ["@property"]                     = { link = "@variable"    },
      ["@lsp.type.operator"]            = { link = "Operator"     },
      -- todo comments
      ["@comment.error.comment"]        = { link = "RedBold"      },
      ["@comment.warning.comment"]      = { link = "YellowBold"   },
      ["@comment.todo.comment"]         = { link = "BlueBold"     },
      ["@comment.note.comment"]         = { link = "BlueBold"     },
    },
    ["folke/lazy.nvim"] = {
      LazyButtonActive                  = { link = "BtnOrangeSolid"   },
      LazyH1                            = { link = "LazyButtonActive" },
    },
    ["williamboman/mason.nvim"] = {
      MasonHeader                       = { link = "BtnOrangeSolid"           },
      MasonHighlightBlockBold           = { link = "BtnBlue"                  },
      MasonHeaderSecondary              = { link = "MasonHighlightBlockBold"  },
      MasonHighlight                    = { link = "Directory"                },
      MasonMutedBlock                   = { link = "BtnMutedSolid"            },
      MasonHighlightSecondary           = { link = "BtnOrangeSolid"           },
      MasonHighlightBlockBoldSecondary  = { link = "BtnOrangeSolid"           },
    },
    ["ibhagwan/fzf-lua"] = {
      FzfLuaBorder                      = { fg = c.dark_grey.hex,  bold = true },
      FzfLuaTitle                       = { fg = c.orange.hex,     bold = true },
      FzfLuaFzfBorder                   = { link = "FzfLuaBorder"                   },
    },
    ["nvim-mini/mini.icons"] = {
      MiniIconsAzure                    = { link = "Blue" },
      MiniIconsGrey                     = { link = "Gray" },
    },
    ["echasnovski/mini.clue"] = {
      MiniClueTitle = { link = "BtnBlueSolid" },
      MiniClueSeparator = { link = "RetroboxDimmer" },
    },
    ["nvim-neotest/neotest"] = {
      NeotestAdapterName = { link = "Keyword" },
      NeotestBorder = { link = "Keyword" },
      NeotestPassed = { link = "GreenSign" },
      NeotestFailed = { link = "RedSign" },
      NeotestRunning = { link = "YellowSign" },
      NeotestSkipped = { link = "BlueSign" },
      NeotestFile = { link = "YellowSign" },
      NeotestDir = { link = "YellowSign" },
    },
    ["stevearc/oil.nvim"] = {
      OilTrash = { link = "Red" },
      OilPurge = { link = "Orange" },
      OilCreate = { link = "Purple" },
    },
    ["lewis6991/gitsigns.nvim"] = {
      GitSignsDeleteInline = { reverse = true },
      GitSignsAddInline = { reverse = true },
      GitSignsChangeInline = { reverse = true },
    },
    -- stylua: ignore end
  }
end

return M
