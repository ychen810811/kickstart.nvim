-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
vim.pack.add { { src = 'https://github.com/nvim-treesitter/nvim-treesitter-textobjects', version = 'main' } }

require('nvim-treesitter-textobjects').setup {
  select = { lookahead = true },
  move = { set_jumps = true },
}

local select = require 'nvim-treesitter-textobjects.select'
local move = require 'nvim-treesitter-textobjects.move'

for keys, capture in pairs {
  af = '@function.outer',
  ['if'] = '@function.inner',
  ac = '@class.outer',
  ic = '@class.inner',
  aa = '@parameter.outer',
  ia = '@parameter.inner',
} do
  vim.keymap.set({ 'x', 'o' }, keys, function() select.select_textobject(capture, 'textobjects') end)
end

for keys, mapping in pairs {
  [']m'] = { move.goto_next_start, '@function.outer' },
  [']]'] = { move.goto_next_start, '@class.outer' },
  [']M'] = { move.goto_next_end, '@function.outer' },
  ['[m'] = { move.goto_previous_start, '@function.outer' },
  ['[['] = { move.goto_previous_start, '@class.outer' },
  ['[M'] = { move.goto_previous_end, '@function.outer' },
} do
  vim.keymap.set({ 'n', 'x', 'o' }, keys, function() mapping[1](mapping[2], 'textobjects') end)
end
-- vim: ts=2 sts=2 sw=2 et
