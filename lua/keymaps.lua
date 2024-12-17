-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
vim.keymap.set('n', '<leader>cd', vim.diagnostic.open_float, { desc = 'Show [d]iagnostic message in float' })

vim.keymap.set('n', '<leader>d[', vim.diagnostic.goto_prev, { desc = 'Goto next diagnostic message' })
vim.keymap.set('n', '<leader>d]', vim.diagnostic.goto_next, { desc = 'Goto previous diagostic message' })
vim.keymap.set('n', '<leader>tu', vim.cmd.UndotreeToggle, { desc = 'Toggle Undotree' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

vim.keymap.set('n', '<C-h>', '<Cmd>NvimTmuxNavigateLeft<CR>')
vim.keymap.set('n', '<C-j>', '<Cmd>NvimTmuxNavigateDown<CR>')
vim.keymap.set('n', '<C-k>', '<Cmd>NvimTmuxNavigateUp<CR>')
vim.keymap.set('n', '<C-l>', '<Cmd>NvimTmuxNavigateRight<CR>')

vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")
vim.keymap.set({ 'n', 'v' }, '<leader>y', [["+y]])
vim.keymap.set('x', '<leader>p', [["_dP]])
vim.keymap.set('v', '>', '>gv')
vim.keymap.set('v', '<', '<gv')

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- vim: ts=2 sts=2 sw=2 et
