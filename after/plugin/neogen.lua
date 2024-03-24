-- Ensure this is in a scope that is accessible globally
local opts = { noremap = true, silent = true }

-- Function to generate comments for classes
_G.generateFunctionComment = function()
    require('neogen').generate()
end

-- Function to generate comments for functions
_G.generateClassComment = function()
    require('neogen').generate({ type = 'class' })
end

-- Map keys to call the above functions
vim.api.nvim_set_keymap('n', '<leader>nc', '<cmd>lua generateClassComment()<CR>', opts)
vim.api.nvim_set_keymap('n', '<leader>nf', '<cmd>lua generateFunctionComment()<CR>', opts)
vim.api.nvim_set_keymap("n", "<C-l>", ":lua require('neogen').jump_next<CR>", opts)
vim.api.nvim_set_keymap("n", "<C-h>", ":lua require('neogen').jump_prev<CR>", opts)

