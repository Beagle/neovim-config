--Set completeopt to have a better completion experience
-- :help completeopt
-- menuone: popup even when there's only one match
-- noinsert: Do not insert text until a selection is made
-- noselect: Do not select, force to select one from the menu
-- shortmess: avoid showing extra messages when using completion
-- updatetime: set updatetime for CursorHold
vim.opt.completeopt = {'menuone', 'noselect', 'noinsert'}
vim.opt.shortmess = vim.opt.shortmess + { c = true}
vim.o.updatetime = 300

local cmp = require('cmp')
cmp.setup({
    -- Enable LSP snippets
    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
        end,
    },
    mapping = {
        ['<C-p>'] = cmp.mapping.select_prev_item(),
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<S-TAB>'] = cmp.mapping.select_prev_item(),
        ['<TAB>'] = cmp.mapping.select_next_item(),
        ['<C-S-f>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.close(),
        ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Insert,
            select = true,
        })
    },
    -- Installed sources:
    sources = {
        { name = 'path', keyword_length = 1 },      -- file paths
        { name = 'nvim_lsp', keyword_length = 2 },  -- from language server
        { name = 'nvim_lsp_signature_help' },       -- display function signatures with current parameter emphasized
        { name = 'nvim_lua', keyword_length = 2 },  -- complete neovim's Lua runtime API such vim.lsp.*
        { name = 'buffer', keyword_length = 3 },    -- source current buffer
        { name = 'vsnip', keyword_length = 2 },     -- nvim-cmp source for vim-vsnip
        { name = 'calc' },                          -- source for math calculation
    },
    window = { -- configure the code completion window
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    formatting = {
        fields = {'menu', 'abbr', 'kind'},
        format = function(entry, item)
            local menu_icon = { --indicate the source of the completion text
                nvim_lsp = 'λ',
                vsnip = '⋗',
                buffer = 'Ω',
                path = '/',
            }
            item.menu = menu_icon[entry.source.name]
            return item
        end,
    },
})
