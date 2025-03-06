return {
    {'williamboman/mason.nvim', opts = {}},
    {'williamboman/mason-lspconfig.nvim', opts = {}},
    {'neovim/nvim-lspconfig'},
    {'mfussenegger/nvim-lint'},
    {'mhartington/formatter.nvim'},
    {
        'nvim-treesitter/nvim-treesitter',
        build = ":TSUpdate",
        config = function ()
            local configs = require("nvim-treesitter.configs")

            configs.setup({
                auto_install = true,
                ensure_installed = {
                    "c",
                    "css",
                    "html",
                    "javascript",
                    "lua",
                    "query",
                    "rust",
                    "toml",
                    "vim",
                    "vimdoc",
                },
                highlight = {
                    enable = true,
                    additional_vim_regex_highlighting=false,
                },
                indent = { enable = true },
                rainbow = {
                    enable = true,
                    extended_mode = true,
                    max_file_lines = nil,
                },
                sync_install = false,
            })
        end
    },
    {
        'dense-analysis/ale', -- async linting
        config = function()
            vim.g.ale_linters = {
                javascript = {'eslint'},
                lua = {'lua-language-server'},
                rust = {'rust-analyzer'},
            }
        end
    },
}
