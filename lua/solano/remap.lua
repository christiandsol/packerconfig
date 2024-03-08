vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")
vim.keymap.set("n", "<leader>[", "A{<CR>};<ESC>O")
vim.keymap.set("n", "<leader>vwm", function()
    require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()
    require("vim-with-me").StopVimWithMe()
end)
-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])
-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])
-- This is going to get me cancelled
vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
-- Window management mappings using the existing leader key
-- -- Window management mappings using the existing leader key
vim.keymap.set("n", "<leader>wh", "<C-w>h", { noremap = true })
vim.keymap.set("n", "<leader>wj", "<C-w>j", { noremap = true })
vim.keymap.set("n", "<leader>wk", "<C-w>k", { noremap = true })
vim.keymap.set("n", "<leader>wl", "<C-w>l", { noremap = true })
vim.keymap.set("n", "<leader>ww", "<C-w>w", { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>ws', '<C-w>s', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>wx', '<C-w>x', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>wv', '<C-w>v', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>ww', '<C-w>w', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>wt', '<C-w>t', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>wq', '<C-w>q', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>wp', '<C-w>p', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>w+', '<C-w>+', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>w-', '<C-w>-', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>wo', '<C-w>o', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>w<', '<C-w><', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>w>', '<C-w>>', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>w_', '<C-w>_', {noremap = true})
vim.api.nvim_set_keymap('n', '<leader>w|', '<C-w>|', {noremap = true})
