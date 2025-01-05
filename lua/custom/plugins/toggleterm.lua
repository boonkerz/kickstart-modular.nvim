return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    config = function()
      local Terminal = require('toggleterm.terminal').Terminal
      local lazygit = Terminal:new {
        direction = 'float',
        float_opts = {
          border = 'double',
        },
        cmd = 'gitui',
        hidden = true,
      }

      local normalterm = Terminal:new {
        direction = 'float',
        float_opts = {
          border = 'double',
        },
        hidden = true,
      }

      function _lazygit_toggle()
        lazygit:toggle()
      end

      function _normal_toggle()
        normalterm:toggle()
      end

      vim.api.nvim_set_keymap('n', '<leader>tg', '<cmd>lua _lazygit_toggle()<CR>', { desc = 'LazyGit', noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<leader>tn', '<cmd>lua _normal_toggle()<CR>', { desc = 'Terminal', noremap = true, silent = true })
    end,
  },
}
