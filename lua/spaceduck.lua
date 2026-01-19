-- ===============================================================
-- spaceduck
--
-- URL: https://github.com/pineapplegiant/spaceduck
-- Author: Guillermo Rodriguez
-- License: MIT
-- ===============================================================

local M = {}

local function higroups()
  return require("higroups")
end

local function hi()
  return require("highlighter")
end

local function utils()
  return require("utils")
end

function M.load()
  vim.cmd("hi clear")
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end

  local is_dark = vim.o.background == "dark"
  local spaceduck = require("palette")
  vim.g.colors_name = spaceduck.name

  ---@type spaceduck.palette
  local palette = is_dark and spaceduck.dark.palette or spaceduck.light.palette

  local base = is_dark and higroups().dark(palette) or higroups().light(palette)
  local groups = utils().merge_groups(higroups().common(palette), higroups().plugins(palette), base)

  -- apply
  for _, group in pairs(groups) do
    for name, spec in pairs(group) do
      hi().set[name] = spec
    end
  end
end

return M
