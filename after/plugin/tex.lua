-- Other Lua configurations...
vim.g.coc_filetype_map = {tex = 'latex'}
-- VimTeX configurations
vim.cmd('filetype plugin indent on')
vim.cmd('syntax enable')

vim.g.vimtex_view_method = 'zathura'
vim.g.vimtex_view_general_viewer = 'okular'
vim.g.vimtex_view_general_options = '--unique file:@pdf\\#src:@line@tex'
vim.g.vimtex_compiler_method = 'latexrun'

-- Other Lua configurations...
vim.cmd [[
augroup vimtex_compile
    autocmd!
    autocmd BufWritePost *.tex silent execute '!latexmk -pdf %:p'
augroup END
]]
