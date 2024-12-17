return {
  'catppuccin/nvim',
  lazy = false,
  priority = 1000,
  name = 'catppuccin',
  opts = {
    flavor = 'mocha',
    transparent_background = true,
    dim_inactive = {
      enabled = true, -- dims the background color of inactive window
      shade = 'dark',
      percentage = 0.30, -- percentage of the shade to apply to the inactive window
    },
    custom_highlights = function(C)
      return {
        TabLineSel = { bg = C.pink },
        WinSeparator = { fg = C.blue, bold = true },
      }
    end,
    integrations = {
      alpha = true,
      cmp = true,
      flash = true,
      gitsigns = true,
      illuminate = true,
      indent_blankline = { enabled = true },
      lsp_trouble = true,
      mason = true,
      mini = true,
      native_lsp = {
        enabled = true,
        underlines = {
          errors = { 'undercurl' },
          hints = { 'undercurl' },
          warnings = { 'undercurl' },
          information = { 'undercurl' },
        },
      },
      navic = { enabled = true, custom_bg = 'lualine' },
      neotest = true,
      noice = true,
      notify = true,
      neotree = true,
      semantic_tokens = true,
      telescope = true,
      treesitter = true,
      which_key = true,
    },
  },
  config = function()
    Colors = require('catppuccin.palettes').get_palette 'mocha'
    require('catppuccin').setup {
      custom_highlights = function(Colors)
        return {
          VertSplit = { fg = Colors.overlay0 },
        }
      end,
    }
    vim.cmd.colorscheme 'catppuccin-mocha'

    -- You can configure highlights by doing something like:
  end,
  init = function()
    vim.cmd.hi 'Comment gui=none'
  end,
}
