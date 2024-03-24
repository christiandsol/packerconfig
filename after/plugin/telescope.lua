local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set("n", "<leader>ds", builtin.lsp_document_symbols, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ")});
end)
vim.keymap.set('n', '<leader>wy', builtin.lsp_workspace_symbols, {})
vim.keymap.set('n', '<leader>lf', builtin.oldfiles, {})
vim.keymap.set('n', '<leader>lh', builtin.command_history, {})
vim.keymap.set('n', '<leader>lj', builtin.jumplist, {})
vim.keymap.set('n', '<leader>lb', builtin.current_buffer_fuzzy_find, {})
vim.keymap.set('n', '<leader>lc', builtin.git_bcommits, {})
vim.keymap.set('n', '<leader>lt', builtin.treesitter, {})
vim.keymap.set('n', '<leader>lg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>nv',function ()
    builtin.find_files {
        cwd = vim.fn.stdpath('config')
    }
end)




