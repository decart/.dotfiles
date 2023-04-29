local hop = require('hop')
local options = require('mansur.hop.opts')
local jump_target = require('hop.jump_target')

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

M.hint_letter_start = function (char, opts)
  opts = options.override_opts(opts, M.opts)

  local regex = '\\<' .. char
  local generator = opts.current_line_only and
    jump_target.jump_targets_for_current_line or
    jump_target.jump_targets_by_scanning_lines


  if vim.o.smartcase then
    if not starts_with_uppercase(char) then
      regex = '\\c' .. regex
    end
  elseif opts.case_insensitive then
    regex = '\\c' .. regex
  end

  hop.hint_with(
    generator(jump_target.regex_by_searching(regex, false, opts)),
    opts
  )
end

M.hint_non_letter = function(char, opts)
  opts = options.override_opts(opts, M.opts)

  local generator = opts.current_line_only and
    jump_target.jump_targets_for_current_line or
    jump_target.jump_targets_by_scanning_lines

  hop.hint_with(
    generator(jump_target.regex_by_case_searching(char, true, opts)),
    opts
  )
end

function M.hint_word_start(opts)
  local char = hop.get_input_pattern('Hop 1 char: ', 1)
  if not char then return end

  -- Check if char is letter
  if string.match(char, '[%a%d_]') then
    M.hint_letter_start(char, opts)
  else
    M.hint_non_letter(char, opts)
  end
end

function M.register(opts)
  M.opts = opts
end

return M
