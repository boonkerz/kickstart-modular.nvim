return {
  {
    'andythigpen/nvim-coverage',
    version = '*',
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    keys = {
      {
        '<leader>cc',
        function()
          require('coverage').load()
          require('coverage').show()
        end,
        desc = 'Coverage Load',
      },
      {
        '<leader>cs',
        function()
          require('coverage').load()
          require('coverage').summary()
        end,
        desc = 'Coverage Summary',
      },
    },
    config = function()
      require('coverage').setup {
        commands = true,
        auto_reload = true,
        lang = {
          php = {
            coverage_file = 'cobertura.xml',
          },
        },
      }
    end,
  },
}
