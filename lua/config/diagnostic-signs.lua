-----------------------------------
-- LSP Diagnostics Options Setup --
-----------------------------------

-- This configuration sets up icons to be used in the gutter for Diagnostics

-- first, create a function to make this easier
local sign = function(opts)
    vim.fn.sign_define(opts.name, {
        texthl = opts.name,
        text = opts.text,
        numhl = ''
    })
end

-- then, select unicode characters for the 4 states of Diagnostics
sign({name = 'DiagnosticSignError', text = '⛔'})
sign({name = 'DiagnosticSignWarn', text = '⚠'})
sign({name = 'DiagnosticSignHint', text = '🔍'})
sign({name = 'DiagnosticSignInfo', text = ''})

-- Configure the neovim diagnostics behavior
vim.diagnostic.config({
    virtual_text = false,
    signs = true,
    update_in_insert = true,
    underline = true,
    severity_sort = false,
    float = {
        border = 'rounded',
        source = 'always',
        header = '',
        prefix = '',
    },
})

-- Fixed column for diagnostics to appear
-- Show autodiagnostic popup on cursor hover_range
-- Goto previous / next diagnostic warning / error
-- Show inlay_hints more frequently
vim.cmd([[
set signcolumn=yes
autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
]])
