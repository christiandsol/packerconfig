-- Lua
vim.keymap.set("n", "<leader>xx", function() require("trouble").toggle() end)
vim.keymap.set("n", "<leader>xw", function() require("trouble").toggle("workspace_diagnostics") end)
vim.keymap.set("n", "<leader>xd", function() require("trouble").toggle("document_diagnostics") end)
vim.keymap.set("n", "<leader>xq", function() require("trouble").toggle("quickfix") end)
vim.keymap.set("n", "<leader>xl", function() require("trouble").toggle("loclist") end)
vim.keymap.set("n", "gR", function() require("trouble").toggle("lsp_references") end)



-- close trouble
vim.keymap.set("n", "tc", function () require("trouble").close()end)

-- Jump to the next item, skipping the groups
vim.keymap.set("n", "<leader>tn", function () require("trouble").next({skip_groups = true, jump = true}) end)

-- Jump to the previous item, skipping the groups
vim.keymap.set("n", "<leader>tp", function () require("trouble").previous({skip_groups = true, jump = true}) end)

-- Jump to the first item, skipping the groups
vim.keymap.set("n", "<leader>t1", function () require("trouble").first({skip_groups = true, jump = true}) end)

-- Jump to the last item, skipping the groups
vim.keymap.set("n", "<leader>tf", function () require("trouble").last({skip_groups = true, jump = true}) end)
local actions = require("telescope.actions")
local trouble = require("trouble.providers.telescope")

local telescope = require("telescope")

telescope.setup {
  defaults = {
    mappings = {
      i = { ["<c-t>"] = trouble.open_with_trouble },
      n = { ["<c-t>"] = trouble.open_with_trouble },
    },
  },
}
