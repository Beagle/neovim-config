return {
    {'tpope/vim-sensible', lazy = false},
    {'junegunn/vim-easy-align', lazy = false},
    {'tpope/vim-repeat', lazy = false},
    {'tummetott/unimpaired.nvim', event = 'VeryLazy'},
    {'numToStr/Comment.nvim'},
    {'AndrewRadev/linediff.vim', lazy = false},
    {'bronson/vim-trailing-whitespace', keys = {
        {
            "<leader>s",
            ":FixWhitespace<cr>",
            desc = "Remove trailing whitespace from all lines"
        }
    }},
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
    {
        'nvim-tree/nvim-tree.lua', opts = {}, config = true, init = function()
            vim.g.loaded_netrw = 1       -- disables built in file browser
            vim.g.loaded_netrwPlugin = 1 -- disables built in file browser
        end,
        keys = {
            {
                "<leader>a", ":NvimTreeToggle<cr>",
                desc = "Toggle tree panel"
            },
            {
                "<leader>ff", ":NvimTreeFindFile<cr>",
                desc = "Open tree to file in current buffer"
            }
        }
    },
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        opts = { },
        keys = {
            {
                "<leader>?",
                function()
                    require("which-key").show({ global = false })
                end,
                desc = "Buffer Local Keymaps (which-key)",
            },
        },
    }
}
