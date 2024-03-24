require('nvim-treesitter.configs').setup {
    textobjects = {
        select = {
            enable = true,
            lookahead = true,
            keymaps = {
                ["af"] = { query = "@function.outer", desc = "Select outer part of a function" },
                ["if"] = { query = "@function.inner", desc = "Select outer part of a function" },
                ["ac"] = { query = "@class.outer", desc = "Select outer part of a class" },
                ["ic"] = { query = "@class.inner", desc = "Select inner part of a class" },
                ["a="] = { query = "@assignment.outer", desc = "Select the outer part of an assignment" },
                ["i="] = { query = "@assignment.inner", desc = "Select the inner part of an assignment" },
                ["l="] = { query = "@assignment.lhs", desc = "Select the left hand side of an assignment" },
                ["r="] = { query = "@assignment.rhs", desc = "Select the right hand side of an assignment" },
                -- conditionals
                ["ai"] = { query = "@conditional.outer", desc = "Select the outer part of a conditional" },
                ["ii"] = { query = "@conditional.inner", desc = "Select the inner part of a conditional" },
                --parameters
                ["ap"] = { query = "@parameter.outer", desc = "Select the outer part of a parameter" },
                ["ip"] = { query = "@parameter.inner", desc = "Select the inner part of a parameter" },
                --loop
                ["al"] = { query = "@loop.outer", desc = "Select the outer part of a loop" },
                ["il"] = { query = "@loop.inner", desc = "Select the inner part of a loop" },
                --function definition
                ["ad"] = { query = "@function.definition.outer", desc = "Select the outer part of a function definition" },
                ["id"] = { query = "@function.definition.inner", desc = "Select the inner part of a function definition" },
            },
        },
        swap = {
            enable = true,
            swap_next = {
                ["<leader>an"] = "@function.outer",
            },
            swap_previous = {
                ["<leader>ap"] = "@function.outer",
            },
        },
    }
}
