return {
    {'folke/tokyonight.nvim', lazy = false, priority = 1000},
    {'williamboman/mason.nvim'}, -- rust
    {'williamboman/mason-lspconfig.nvim'}, -- rust
    {'simrat39/rust-tools.nvim', lazy = true}, -- rust
    {'nvim-treesitter/nvim-treesitter'},
    {'mfussenegger/nvim-lint'},
    {'pmizio/typescript-tools.nvim', lazy = true},
    {'mhartington/formatter.nvim'},
    {'dense-analysis/ale'},
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
}
