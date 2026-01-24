return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' }, -- 必须安装图标支持
  config = function()
    require('lualine').setup {
      options = {
        theme = 'catppuccin',

        section_separators = { left = '', right = '' },
        --component_separators = { left = '', right = '' },
        component_separators = { left = '•', right = '•' },
        --component_separators = { left = '', right = '' },
        --component_separators = { left = '|', right = '|' },

        globalstatus = true, -- 建议开启：只显示一个底栏，而不是每个窗口都有（看起来更像 IDE）
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { 'filename' },
        lualine_x = { 'encoding', 'fileformat', 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = { 'location' },
      },
    }
  end,
}
