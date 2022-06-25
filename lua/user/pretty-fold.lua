require('pretty-fold').setup{
  keep_indentation = false,
  fill_char = '━',
  sections = {
    left = {
       '━ ', function() return string.rep('*', vim.v.foldlevel) end, ' ━┫', 'content', '┣'
    },
    right = {
       '┫ ', 'number_of_folded_lines', ': ', 'percentage', ' ┣━━',
    }
 }
}

require('pretty-fold.preview').setup {
  default_keybindings = false,
}

-- require('pretty-fold').setup({
--   {...}, -- global config table for all Foldmethods
--   expr   = { process_comment_signs = false },
--   marker = { process_comment_signs = 'spaces' },
--
--   -- beginning of the line -> any number of spaces -> 'do' -> end of the line
--   matchup_patterns = {
--     { '^%s*do$', 'end' }, -- `do ... end` blocks
--     { '^%s*if', 'end' },  -- if
--     { '^%s*for', 'end' }, -- for
--     { 'function%s*%(', 'end' }, -- 'function( or 'function (''
--     { '{', '}' },
--     { '%(', ')' }, -- % to escape lua pattern char
--     { '%[', ']' }, -- % to escape lua pattern char
--   },
-- })

-- require('pretty-fold').ft_setup('cpp', {
--    process_comment_signs = false,
--    comment_signs = {
--       '/**', -- C++ Doxygen comments
--    },
--    stop_words = {
--       '%s%*',      -- a space and star char
--       '@brief%s*', -- '@brief' and any number of spaces after
--       -- or in sigle pattern:
--       -- '%*%s*@brief%s*', -- * -> any number of spaces -> @brief -> all spaces after
--    },
-- })
