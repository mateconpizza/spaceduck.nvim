local M = {}

---@param c spaceduck.palette
---@return table<string, palette.HighlightAttrs>
function M.light(c)
  return require('higroups.light').setup(c)
end

---@param c spaceduck.palette
---@return table<string, palette.HighlightAttrs>
function M.dark(c)
  return require('higroups.dark').setup(c)
end

---@param c spaceduck.palette
---@return table<string, palette.HighlightAttrs>
function M.plugins(c)
  return require('higroups.plugins').setup(c)
end

---@param c spaceduck.palette
---@return table<string, palette.HighlightAttrs>
function M.common(c)
  return require('higroups.common').setup(c)
end

return M
