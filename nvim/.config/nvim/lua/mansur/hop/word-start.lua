local hop = require('hop')
local options = require('mansur.hop.opts')

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
  hop.hint_with(
    generator(jump_target.regex_by_case_searching(regex, false, opts)),
    opts
  )
end

function M.register(opts)
  M.opts = opts
end

return M
