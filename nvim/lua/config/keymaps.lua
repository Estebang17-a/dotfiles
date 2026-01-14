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
