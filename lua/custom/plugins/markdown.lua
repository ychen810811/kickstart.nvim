-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
vim.g.mkdp_filetypes = { 'markdown' }
vim.g.table_mode_corner = '|'

vim.pack.add {
  'https://github.com/MeanderingProgrammer/render-markdown.nvim',
  'https://github.com/iamcco/markdown-preview.nvim',
  'https://github.com/dhruvasagar/vim-table-mode',
}

require('render-markdown').setup {
      code = {
        sign = false,
        width = 'block',
        right_pad = 1,
      },
      heading = {
        sign = false,
        icons = { 'h1 ', 'h2 ', 'h3 ', 'h4 ', 'h5 ', 'h6 ' },
      },
}

-- vim: ts=2 sts=2 sw=2 et
