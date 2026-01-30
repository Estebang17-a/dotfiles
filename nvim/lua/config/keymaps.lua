--- Insert mode navigation (Mac-style)

-- Alt+arrows for word jumping (Option key)
vim.keymap.set('i', '<A-Right>', '<C-o>w', { desc = 'Word forward' })
vim.keymap.set('i', '<A-Left>', '<C-o>b', { desc = 'Word backward' })

-- Cmd+arrows for line start/end
vim.keymap.set('i', '<D-Left>', '<C-o>^', { desc = 'Go to line start' })
vim.keymap.set('i', '<D-Right>', '<C-o>$', { desc = 'Go to line end' })

-- Or use Cmd+arrows for top/bottom of file
vim.keymap.set('i', '<D-Up>', '<C-o>gg', { desc = 'Go to file top' })
vim.keymap.set('i', '<D-Down>', '<C-o>G', { desc = 'Go to file bottom' })

-- Bonus: Alt+Backspace to delete word backward
vim.keymap.set('i', '<A-BS>', '<C-w>', { desc = 'Delete word backward' })

-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Copy absolute path of current file to clipboard
vim.keymap.set('n', '<leader>yp', function()
  local path = vim.fn.expand('%:p')
  vim.fn.setreg('+', path)
  vim.notify('Copied: ' .. path)
end, { desc = 'Yank absolute path' })

-- Copy relative path
vim.keymap.set('n', '<leader>yr', function()
  local path = vim.fn.expand('%')
  vim.fn.setreg('+', path)
  vim.notify('Copied: ' .. path)
end, { desc = 'Yank relative path' })

-- Copy just the filename
vim.keymap.set('n', '<leader>yf', function()
  local name = vim.fn.expand('%:t')
  vim.fn.setreg('+', name)
  vim.notify('Copied: ' .. name)
end, { desc = 'Yank filename' })
