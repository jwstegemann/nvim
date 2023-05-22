local opts = {buffer = 0}

-- Terminal
function _G.set_terminal_keymaps()

  --vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  --vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
  vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

vim.keymap.set('i', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
vim.keymap.set('i', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
vim.keymap.set('i', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
vim.keymap.set('i', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
vim.keymap.set('i', '<C-w>', [[<C-\><C-n><C-w>]], opts)

vim.keymap.set('n', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
vim.keymap.set('n', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
vim.keymap.set('n', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
vim.keymap.set('n', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
vim.keymap.set('n', '<C-w>', [[<C-\><C-n><C-w>]], opts)


-- Searches
vim.keymap.set('n', '<leader>sc', require('telescope.builtin').commands, { desc = '[S]earch [C]ommands' })
vim.keymap.set('n', '<leader>tt', require('toggleterm').toggle_command, { desc = '[T]oggle [T]erminal' })


