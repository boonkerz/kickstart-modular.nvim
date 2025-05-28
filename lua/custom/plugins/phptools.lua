return {
  {
    'ccaglak/phptools.nvim',
    keys = {
      { '<leader>lm', '<cmd>PhpTools Method<cr>' },
      { '<leader>lc', '<cmd>PhpTools Class<cr>' },
      { '<leader>ls', '<cmd>PhpTools Scripts<cr>' },
      { '<leader>ln', '<cmd>PhpTools Namespace<cr>' },
      { '<leader>lg', '<cmd>PhpTools GetSet<cr>' },
      { '<leader>lf', '<cmd>PhpTools Create<cr>' },
      { mode = 'v', '<leader>lr', '<cmd>PhpTools Refactor<cr>' },
    },
    dependencies = {
      -- "ccaglak/namespace.nvim", -- optional - php namespace resolver
      -- "ccaglak/larago.nvim", -- optional -- laravel goto blade/components
      -- "ccaglak/snippets.nvim", -- optional -- native snippet expander
    },
    config = function()
      require('phptools').setup {
        ui = {
          enable = true, -- default:true; false only if you have a UI enhancement plugin
          fzf = false, -- default:false; tests requires fzf used only in tests module otherwise there might long list  of tests
        },
        custom_toggles = { -- delete if you dont use it
          enable = false, -- default:false
          -- { "foo", "bar", "baz" }, -- Add more custom toggle groups here
        },
      }
    end,
  },
}
