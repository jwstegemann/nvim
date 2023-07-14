  --vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)

local opts = { buffer = 0 }
-- Terminal
function _G.set_terminal_keymaps()
  --vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  --vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

vim.keymap.set('i', '<C-w>', [[<C-\><C-n><C-w>]], opts)

vim.keymap.set('n', '<C-w>', [[<C-\><C-n><C-w>]], opts)


-- Searches
vim.keymap.set('n', '<leader>sc', require('telescope.builtin').commands, { desc = '[S]earch [C]ommands' })
vim.keymap.set('n', '<leader>so', require('telescope.builtin').buffers, { desc = '[S]earch [O]pen Buffers' })
vim.keymap.set('n', '<leader>sj', require('telescope.builtin').jumplist, { desc = '[S]earch [J]umps' })

-- Terminal
vim.keymap.set('n', '<leader>tt', require('toggleterm').toggle_command, { desc = '[T]oggle [T]erminal' })

-- Trouble
vim.keymap.set("n", "<leader>tx", "<cmd>TroubleToggle<cr>", { desc = '[T]oggle [X] Trouble' })
vim.keymap.set("n", "<leader>tw", "<cmd>TroubleToggle workspace_diagnostics<cr>",
  { desc = '[T]oggle [W]orkspace Diagnostics' })
vim.keymap.set("n", "<leader>td", "<cmd>TroubleToggle document_diagnostics<cr>",
  { desc = '[T]oggle [D]ocument Diagnostics' })
vim.keymap.set("n", "<leader>tl", "<cmd>TroubleToggle loclist<cr>", { desc = '[T]oggle [L]oclis' })
vim.keymap.set("n", "<leader>tq", "<cmd>TroubleToggle quickfix<cr>", { desc = '[T]oggle [Q]uickfix' })
-- vim.keymap.set("n", "gR", "<cmd>TroubleToggle lsp_references<cr>", { desc = '[T]oggle [X] Trouble'})

-- LSP
vim.keymap.set("n", "<leader>cf", "<cmd>Format<cr>", { desc = '[C]ode [F]ormat' })

-- File-Tree
vim.keymap.set("n", "<leader>tf", "<cmd>NvimTreeToggle<cr>", { desc = '[T]oggle [F]ile Tree' })

-- do not use clipboard when deleting 
-- vim.api.nvim_set_keymap('n', 'x', '"_x', { noremap = true })
-- vim.api.nvim_set_keymap('n', 'X', '"_X', { noremap = true })
-- vim.api.nvim_set_keymap('n', '<Del>', '"_x', { noremap = true })
-- vim.api.nvim_set_keymap('n', 'p', '"0p', { noremap = true })
