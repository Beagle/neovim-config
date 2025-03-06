return {
    {
        'tpope/vim-fugitive',
        lazy = false,
        keys = {
            {
                "<leader>d",
                ":Gvdiffsplit!<cr>",
                desc = "Open git diff in a split"
            },
            {
                "<leader>B",
                ":Git blame<cr>",
                desc = "Open git blame in a split"
            },
            {
                "<leader>L",
                ":vert Git log --oneline<cr>",
                desc = "Open git log in a split"
            },
        },
    },
    {'airblade/vim-gitgutter'},
}
