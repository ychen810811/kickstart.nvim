-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  'nvim-treesitter/nvim-treesitter',
  event = { 'BufReadPost', 'BufNewFile' },
  dependencies = {
    'nvim-treesitter/nvim-treesitter-textobjects',
  },

  opts = {
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = '<CR>',
        node_incremental = '<CR>',
        scope_incremental = '<TAB>',
        node_decremental = '<BS>',
      },
    },

    textobjects = {
      select = {
        enable = true,
        lookahead = true, -- 自动跳到光标后的下一个匹配项
        keymaps = {
          -- 自定义你的文本对象键位
          -- 'a' = around (包含外层), 'i' = inner (仅内部)
          ['af'] = '@function.outer', -- 选中整个函数
          ['if'] = '@function.inner', -- 选中函数内部
          ['ac'] = '@class.outer', -- 选中整个类
          ['ic'] = '@class.inner', -- 选中类内部
          ['aa'] = '@parameter.outer', -- 选中整个参数
          ['ia'] = '@parameter.inner', -- 选中参数文本
        },
      },

      move = {
        enable = true,
        set_jumps = true, -- 将跳转记录到 jumplist (可用 Ctrl-o 回退)
        goto_next_start = {
          [']m'] = '@function.outer', -- 跳转到下一个函数开头
          [']]'] = '@class.outer', -- 跳转到下一个类开头
        },
        goto_next_end = {
          [']M'] = '@function.outer', -- 跳转到下一个函数结尾
        },
        goto_previous_start = {
          ['[m'] = '@function.outer', -- 跳转到上一个函数开头
          ['[['] = '@class.outer', -- 跳转到上一个类开头
        },
        goto_previous_end = {
          ['[M'] = '@function.outer', -- 跳转到上一个函数结尾
        },
      },
    },
  },
}
-- vim: ts=2 sts=2 sw=2 et
