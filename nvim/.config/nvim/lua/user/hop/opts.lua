local M = {}

function M.check_opts(opts)
  if not opts then
    return
  end

  if opts.multi_windows and opts.current_line_only then
    vim.notify('Cannot use current_line_only across multiple windows', 3)
  end
  if vim.api.nvim_get_mode().mode ~= 'n' then
    opts.multi_windows = false
  end
end

function M.override_opts(opts, global)
  M.check_opts(opts)
  return setmetatable(opts or {}, {__index = global})
end

return M
