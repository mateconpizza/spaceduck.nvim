-- ===============================================================
-- spaceduck
--
-- URL: https://github.com/pineapplegiant/spaceduck
-- Author: Guillermo Rodriguez
-- License: MIT
-- ===============================================================

local function higroups()
  return require('higroups')
end

local function hi()
  return require('highlighter')
end

local is_dark = vim.o.background == 'dark'
local spaceduck = require('palette')
vim.g.colors_name = spaceduck.name

local theme = require('palette').light
if is_dark then
  theme = spaceduck.dark
end

---@type spaceduck.palette
local c = theme.palette

vim.api.nvim_command('hi clear')
if vim.g.syntax_on then
  vim.api.nvim_command('syntax reset')
end

local groups = (is_dark and higroups().dark(c) or higroups().light(c))

groups = vim.tbl_extend('force', higroups().common(c), higroups().plugins(c), groups)
for _, group in pairs(groups) do
  for name, spec in pairs(group) do
    hi().set[name] = spec
  end
end
