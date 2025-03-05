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
    {'cocopon/inspecthi.vim', lazy = false},
    {'AndrewRadev/linediff.vim', lazy = false},
}
