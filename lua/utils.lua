local M = {}

function M.merge_groups(...)
  local out = {}
  for _, src in ipairs({ ... }) do
    for section, groups in pairs(src) do
      out[section] = out[section] or {}
      out[section] = vim.tbl_deep_extend("force", out[section], groups)
    end
  end
  return out
end

return M
