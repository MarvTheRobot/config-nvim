require('lazy').setup({
  -- NOTE: Plugins can also be added by using a table,
  -- with the first argument being the link and the following
  -- keys can be used to configure plugin behavior/loading/etc.
  --
  -- Use `opts = {}` to force a plugin to be loaded.
  --
  --require 'marv/plugins/catpuccin',
  require 'marv/plugins/tokionight',
  require 'marv/plugins/tmux',

  require 'marv/plugins/gitsigns',
  require 'marv/plugins/telescope',
  require 'marv/plugins/lspconfig',
  require 'marv/plugins/treesitter',
  require 'marv/plugins/conform',
  require 'marv/plugins/cmp',
  require 'marv/plugins/mini',

  require 'marv/plugins/trouble',
  require 'marv/plugins/debug',

  require 'marv/plugins/todo-comments',
  require 'marv/plugins/neo-tree',
  require 'marv/plugins/undotree',
  require 'marv/plugins/dashboard',
  require 'marv/plugins/which-key',

  require 'marv/plugins/lint',
  require 'marv/plugins/render-markdown',
  require 'marv/plugins/wiki',
}, {
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
})

-- vim: ts=2 sts=2 sw=2 et
