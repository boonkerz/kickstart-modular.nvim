return {
  {
    'nvim-neotest/neotest',
    dependencies = {
      'nvim-neotest/nvim-nio',
      'nvim-lua/plenary.nvim',
      'antoinemadec/FixCursorHold.nvim',
      'nvim-treesitter/nvim-treesitter',
      'olimorris/neotest-phpunit',
    },
    keys = {
      { '<leader>n', '', desc = '+test' },
      {
        '<leader>nt',
        function()
          require('neotest').run.run(vim.fn.expand '%')
        end,
        desc = 'Run File (Neotest)',
      },
      {
        '<leader>nT',
        function()
          require('neotest').run.run(vim.uv.cwd())
        end,
        desc = 'Run All Test Files (Neotest)',
      },
      {
        '<leader>nr',
        function()
          require('neotest').run.run()
        end,
        desc = 'Run Nearest (Neotest)',
      },
      {
        '<leader>nl',
        function()
          require('neotest').run.run_last()
        end,
        desc = 'Run Last (Neotest)',
      },
      {
        '<leader>ns',
        function()
          require('neotest').summary.toggle()
        end,
        desc = 'Toggle Summary (Neotest)',
      },
      {
        '<leader>no',
        function()
          require('neotest').output.open { enter = true, auto_close = true }
        end,
        desc = 'Show Output (Neotest)',
      },
      {
        '<leader>nO',
        function()
          require('neotest').output_panel.toggle()
        end,
        desc = 'Toggle Output Panel (Neotest)',
      },
      {
        '<leader>nS',
        function()
          require('neotest').run.stop()
        end,
        desc = 'Stop (Neotest)',
      },
      {
        '<leader>nw',
        function()
          require('neotest').watch.toggle(vim.fn.expand '%')
        end,
        desc = 'Toggle Watch (Neotest)',
      },
    },
    config = function()
      require('neotest').setup {
        adapters = {
          require 'neotest-phpunit' {
            phpunit_cmd = function()
              return 'vendor/bin/paratest'
            end,
            filter_dirs = { 'vendor' },
          },
        },
      }
    end,
  },
}
