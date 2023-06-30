
-- search and replace
vim.keymap.set('n', '<leader>sr', function()
  vim.cmd('%s/' .. vim.fn.input('Replace: ') .. '/' .. vim.fn.input('With: ') .. '/g')
end, { desc = "[S]earch and [R]eplace", noremap = true, silent = true })

-- search and perform an action
vim.keymap.set('n', '<leader>sa', function()
  vim.cmd('g/' .. vim.fn.input('Regex: ') .. '/' .. vim.fn.input('Action: ') )
end, { desc = "[S]earch and [A]ction", noremap = true, silent = true })

-- for sqlx: create a migration
vim.keymap.set('n', '<leader>cm', function()
  vim.cmd('!sqlx migrate add ' .. vim.fn.input('Migration name: '))
end, { desc = "[C]reate [M]igration" })

