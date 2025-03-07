return {
    {'williamboman/mason.nvim', opts = {}},
    {'williamboman/mason-lspconfig.nvim', opts = {}},
    {'WhoIsSethDaniel/mason-tool-installer.nvim', opts = {
        auto_update = true,
        ensure_installed = {
            'bash-language-server',
            'codelldb',
            'css-lsp',
            'editorconfig-checker',
            'eslint-lsp',
            'json-lsp',
            'json-to-struct',
            'lua-language-server',
            'misspell',
            'pylint',
            'python-lsp-server',
            'rust-analyzer',
            'shellcheck',
            'shellcheck',
            'shfmt',
            'stylua',
            'typescript-language-server',
            'vim-language-server',
            'vint',
            'yaml-language-server',
        },
    }},
    {'neovim/nvim-lspconfig'},
    {'mfussenegger/nvim-lint'},
    {'mhartington/formatter.nvim'},
    {
        'nvim-treesitter/nvim-treesitter',
        build = ":TSUpdate",
        main = 'nvim-treesitter.configs',
        opts = {
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
        },
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
