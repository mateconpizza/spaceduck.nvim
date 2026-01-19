local M = {}

-- highlight setter using your preferred pattern
---@alias palette.HighlightAttrs vim.api.keyset.highlight
---@type table<string, palette.HighlightAttrs>
M.set = setmetatable({}, {
  __newindex = function(_, hlgroup, args)
    if args == nil then
      return
    end
    if args.link then
      vim.cmd(('hi! link %s %s'):format(hlgroup, args.link))
      return
    end
    vim.api.nvim_set_hl(0, hlgroup, args)
  end,
})

---@param hex_str string hexadecimal value of a color
local function hex_to_rgb(hex_str)
  local hex = '[abcdef0-9][abcdef0-9]'
  local pat = '^#(' .. hex .. ')(' .. hex .. ')(' .. hex .. ')$'
  hex_str = string.lower(hex_str)

  assert(string.find(hex_str, pat) ~= nil, 'hex_to_rgb: invalid hex_str: ' .. tostring(hex_str))

  local red, green, blue = string.match(hex_str, pat)
  return { tonumber(red, 16), tonumber(green, 16), tonumber(blue, 16) }
end

---@param fg string forecrust color
---@param bg string background color
---@param alpha number number between 0 and 1. 0 results in bg, 1 results in fg
function M.blend(fg, bg, alpha)
  ---@diagnostic disable-next-line: cast-local-type, param-type-mismatch
  bg = hex_to_rgb(bg)
  ---@diagnostic disable-next-line: cast-local-type, param-type-mismatch
  fg = hex_to_rgb(fg)

  local blend_chan = function(i)
    local ret = (alpha * fg[i] + ((1 - alpha) * bg[i]))
    return math.floor(math.min(math.max(0, ret), 255) + 0.5)
  end

  return string.format('#%02X%02X%02X', blend_chan(1), blend_chan(2), blend_chan(3))
end

function M.darken(hex, amount, bg)
  local default_bg = '#000000'
  return M.blend(hex, bg or default_bg, math.abs(amount))
end

function M.lighten(hex, amount, fg)
  local default_fg = '#ffffff'
  return M.blend(hex, fg or default_fg, math.abs(amount))
end

function M.tone(color, dark_amt, light_amt)
  local is_dark = vim.o.background == 'dark'
  return is_dark and M.darken(color, dark_amt) or M.lighten(color, light_amt)
end

return M
