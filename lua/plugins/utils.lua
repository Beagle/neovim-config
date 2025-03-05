return {
    {'tpope/vim-sensible', lazy = false},
    {'junegunn/vim-easy-align', lazy = false},
    {'tpope/vim-repeat', lazy = false},
    {'tummetott/unimpaired.nvim', event = 'VeryLazy'},
    {'bronson/vim-trailing-whitespace', keys = {
        {
            "<leader>s",
            ":FixWhitespace<cr>",
            desc = "Remove trailing whitespace from all lines"
        }
    }},
    {'AndrewRadev/linediff.vim', lazy = false},
    {
        'nvim-telescope/telescope.nvim',
        dependencies = {'nvim-lua/plenary.nvim'},
        keys = {
            {
                "<leader><leader>",
                ":Telescope find_files<cr>",
                desc = "Find files"
            },
            {
                "<leader>b",
                ":Telescope buffers<cr>",
                desc = "Select from open buffers"
            },
            {
                "<leader>/",
                ":Telescope live_grep<cr>",
                desc = "Grep file system"
            },
            {
                "<leader>r",
                ":Telescope registers<cr>",
                desc = "Show contents of registers"
            },
        }
    },
}
