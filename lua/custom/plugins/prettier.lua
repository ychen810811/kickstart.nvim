-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- Autoformat
  'stevearc/conform.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  keys = {},
  opts = {
    formatters_by_ft = {
      markdown = { 'prettier' },
      javascript = { 'prettier' },
      typescript = { 'prettier' },
      jason = { 'prettier' },
      yaml = { 'prettier' },
      html = { 'prettier' },
      css = { 'prettier' },
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
