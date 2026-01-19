---@class spaceduck.theme
---@field variant '"dark"'|'"light"'
---@field palette spaceduck.palette

---@class spaceduck.color
---@field hex string    hex color
---@field cterm integer terminal color index

---@class spaceduck.palette
---@field cream spaceduck.color
---@field white spaceduck.color
---@field black spaceduck.color
---@field blackish spaceduck.color
---@field dark_blue spaceduck.color
---@field dark_grey spaceduck.color
---@field greyer spaceduck.color
---@field grey spaceduck.color
---@field dark_purple spaceduck.color
---@field grey_purple spaceduck.color
---@field purple spaceduck.color
---@field light_purple spaceduck.color
---@field cyan spaceduck.color
---@field green spaceduck.color
---@field orange spaceduck.color
---@field red spaceduck.color
---@field yellow spaceduck.color
---@field magenta spaceduck.color

---@class spaceduck.colorscheme
---@field name string
---@field light spaceduck.theme
---@field dark spaceduck.theme
local M = {}

M.name = 'spaceduck'

---@type spaceduck.theme
M.dark = {
  variant = 'dark',
  palette = {
    -- stylua: ignore start
    -- Foregrounds
    cream =       { hex = "#ecf0c1", cterm = 255 },
    white =       { hex = "#FFFFFF", cterm = 15 },

    -- Backgrounds
    black =       { hex = "#000000", cterm = 0 },
    blackish =    { hex = "#0f111b", cterm = 233 },
    dark_blue =   { hex = "#16172d", cterm = 234 },
    dark_grey =   { hex = "#1b1c36", cterm = 234 },

    -- UI & Comments
    greyer =      { hex = "#c1c3cc", cterm = 251 },
    grey =        { hex = "#818596", cterm = 102 },
    dark_purple = { hex = "#30365F", cterm = 237 },
    grey_purple = { hex = "#686f9a", cterm = 60 },

    -- Accents: Darkened/Saturated for contrast on white
    purple =      { hex = "#7a5ccc", cterm = 98 },
    light_purple ={ hex = "#b3a1e6", cterm = 146 },
    cyan =        { hex = "#00a3cc", cterm = 38 },
    green =       { hex = "#5ccc96", cterm = 78 },
    orange =      { hex = "#e39400", cterm = 172 },
    red =         { hex = "#e33400", cterm = 166 },
    yellow =      { hex = "#f2ce00", cterm = 220 },
    magenta =     { hex = "#ce6f8f", cterm = 168 },
    -- stylua: ignore end
  },
}

---@type spaceduck.theme
M.light = {
  variant = 'light',
  palette = {
    -- stylua: ignore start
    -- Foregrounds
    cream =       { hex = "#4c4f69", cterm = 237 }, -- Main text (Dark Blue-Grey)
    white =       { hex = "#202124", cterm = 235 }, -- Emphasis text (Almost Black)

    -- Backgrounds
    black =       { hex = "#ffffff", cterm = 231 }, -- Pure White
    blackish =    { hex = "#eff1f5", cterm = 254 }, -- Main BG (Cool White)
    dark_blue =   { hex = "#e6e9ef", cterm = 253 }, -- Sidebar/Status (Light Grey-Blue)
    dark_grey =   { hex = "#dce0e8", cterm = 252 }, -- Selection/Contrast

    -- UI & Comments
    greyer =      { hex = "#bcc0cc", cterm = 250 },
    grey =        { hex = "#8c8fa1", cterm = 245 }, -- Comments (Darker for readability)
    dark_purple = { hex = "#c6cfed", cterm = 189 }, -- UI/Selection highlight (Pale Lavender)
    grey_purple = { hex = "#9ca0b0", cterm = 146 },

    -- Accents: Darkened/Saturated for contrast on white
    purple =      { hex = "#8839ef", cterm = 99  },
    light_purple ={ hex = "#7287fd", cterm = 63  },
    cyan =        { hex = "#04a5e5", cterm = 32  },
    green =       { hex = "#40a02b", cterm = 28  },
    orange =      { hex = "#df8e1d", cterm = 172 },
    red =         { hex = "#d20f39", cterm = 160 },
    yellow =      { hex = "#df8e1d", cterm = 172 },
    magenta =     { hex = "#ea76cb", cterm = 170 },
    -- stylua: ignore end
  },
}

return M
