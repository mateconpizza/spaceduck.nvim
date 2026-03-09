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

M.name = "spaceduck"

---@type spaceduck.theme
M.dark = {
  variant = "dark",
  palette = {
    -- Foregrounds
    cream = { hex = "#ecf0c1", cterm = 255 },
    white = { hex = "#FFFFFF", cterm = 15 },

    -- Backgrounds
    black = { hex = "#000000", cterm = 0 },
    blackish = { hex = "#0f111b", cterm = 233 },
    dark_blue = { hex = "#16172d", cterm = 234 },
    dark_grey = { hex = "#1b1c36", cterm = 234 },

    -- UI & Comments
    greyer = { hex = "#c1c3cc", cterm = 251 },
    grey = { hex = "#818596", cterm = 102 },
    dark_purple = { hex = "#30365F", cterm = 237 },
    grey_purple = { hex = "#686f9a", cterm = 60 },

    -- Accents: Darkened/Saturated for contrast on white
    purple = { hex = "#7a5ccc", cterm = 98 },
    light_purple = { hex = "#b3a1e6", cterm = 146 },
    cyan = { hex = "#00a3cc", cterm = 38 },
    green = { hex = "#5ccc96", cterm = 78 },
    orange = { hex = "#e39400", cterm = 172 },
    red = { hex = "#e33400", cterm = 166 },
    yellow = { hex = "#f2ce00", cterm = 220 },
    magenta = { hex = "#ce6f8f", cterm = 168 },
  },
}

---@type spaceduck.theme
M.light = {
  variant = "light",
  palette = {
    -- Foregrounds
    cream = { hex = "#0f111b", cterm = 233 },
    white = { hex = "#000000", cterm = 0 },

    -- Backgrounds
    black = { hex = "#FFFFFF", cterm = 15 },
    blackish = { hex = "#f0f1ce", cterm = 255 },
    dark_blue = { hex = "#e8e9d8", cterm = 254 },
    dark_grey = { hex = "#dfe0c9", cterm = 253 },

    -- UI & Comments
    greyer = { hex = "#3e4055", cterm = 237 },
    grey = { hex = "#686f9a", cterm = 60 },
    dark_purple = { hex = "#c1c3cc", cterm = 251 },
    grey_purple = { hex = "#818596", cterm = 102 },

    -- Accents: Darkened/Saturated for contrast on white
    purple = { hex = "#6347aa", cterm = 61 },
    light_purple = { hex = "#8e7dc6", cterm = 98 },
    cyan = { hex = "#0088aa", cterm = 31 },
    green = { hex = "#00a370", cterm = 35 },
    orange = { hex = "#c67d00", cterm = 172 },
    red = { hex = "#c72d00", cterm = 160 },
    yellow = { hex = "#c9a800", cterm = 178 },
    magenta = { hex = "#a8466b", cterm = 132 },
  },
}

return M
