return {
  'rose-pine/neovim',
  name = 'rose-pine',
  priority = 1000,
  config = function()
    require('rose-pine').setup {
      variant = 'main',

      styles = {
        bold = true,
        italic = true,
        transpareny = true,
      },
    }

    -- Load the colorscheme
    vim.cmd [[colorscheme rose-pine]]
    vim.cmd [[set background=dark]]
  end,
}
