local which_key = require("which-key")

-- Define the mappings with descriptions
local mappings = {
    w = {
        name = "windows", -- optional group name
        s = { "<C-w>s", "Split horizontal" },
        x = { "<C-w>x", "Close window" },
        v = { "<C-w>v", "Split vertical" },
        w = { "<C-w>w", "Other window" },
        t = { "<C-w>t", "New tab" },
        q = { "<C-w>q", "Close window" },
        p = { "<C-w>p", "Previous window" },
        h = { "<C-w>h", "Move left" },
        j = { "<C-w>j", "Move down" },
        l = { "<C-w>l", "Move right" },
        k = { "<C-w>k", "Move up" },
        ['+'] = { "<C-w>+", "Increase window height" },
        ['-'] = { "<C-w>-", "Decrease window height" },
        o = { "<C-w>o", "Only window" },
        ['<'] = { "<C-w><", "Expand window left" },
        ['>'] = { "<C-w>>", "Expand window right" },
        ['_'] = { "<C-w>_", "Max out height" }, -- This might not be a standard window management command
        ['|'] = { "<C-w>|", "Max out width" }, -- This might not be a standard window management command
    },
    g = {
        name = "git", -- optional group name
    },
}

-- Register the mappings with which-key
which_key.register(mappings, {
    prefix = "<leader>",
    mode = "n",
    silent = true,
    noremap = true,
    nowait = true,
})

