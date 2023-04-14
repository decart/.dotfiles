local hop = require('hop')
local options = require('mansur.hop.opts')

local function starts_with_uppercase(s)
  if #s == 0 then
    return false
  end

  local f = s:sub(1, vim.fn.byteidx(s, 1))
  -- if it’s a space, we assume it’s not uppercase, even though Lua doesn’t agree with us; I mean, Lua is horrible, who
  -- would like to argue with that creature, right?
  if f == ' ' then
    return false
  end

  return f:upper() == f
end

local M = {}
M.opts = {}

function M.hint_word_start(opts)
  local jump_target = require('hop.jump_target')
  opts = options.override_opts(opts, M.opts)

  local char = hop.get_input_pattern('Hop 1 char: ', 1)
  if not char then
    return
  end

  local generator
  if opts.current_line_only then
    generator = jump_target.jump_targets_for_current_line
  else
    generator = jump_target.jump_targets_by_scanning_lines
  end

  local regex = '\\<' .. char
  if (vim.o.smartcase and not starts_with_uppercase(char)) or opts.case_insensitive then
    regex = '\\c' .. regex
  end


  hop.hint_with(
    generator(jump_target.regex_by_searching(regex, false, opts)),
    opts
  )
end

function M.register(opts)
  M.opts = opts
end

return M
