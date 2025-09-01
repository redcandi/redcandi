return {
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' }, -- optional icons
    config = function()
      require('lualine').setup {
        options = {
          theme = 'auto',
          section_separators = '',
          component_separators = '',
        }
      }
    end
  }
}
