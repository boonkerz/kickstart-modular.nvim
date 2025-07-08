return {
  {
    'andythigpen/nvim-coverage',
    version = '*',
    dependencies = {
      'nvim-lua/plenary.nvim',
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
