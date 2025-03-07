-----------------------------------
-- LSP Diagnostics Options Setup --
-----------------------------------

-- Configure how diagnostics is rendered and behaves

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

-- Define diagnostic configuration
local diagnosticConfig = {
    float = {
        border = 'rounded',
        header = '',
        prefix = '',
        source = true,
    },
    severity_sort = false,
    signs = true,
    underline = true,
    update_in_insert = true,
    virtual_text = true,
}

-- Configure the neovim diagnostics behavior
vim.diagnostic.config(diagnosticConfig)

-- Fixed column for diagnostics to appear
-- Show autodiagnostic popup on cursor hover_range
-- Goto previous / next diagnostic warning / error
-- Show inlay_hints more frequently
vim.cmd([[
set signcolumn=auto:2
autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focusable = false })
]])

-- Create toggle to show/hide diagnostics
local diagnostics_active = true
local toggle_diagnostics = function()
  diagnostics_active = not diagnostics_active
  if diagnostics_active then
    vim.diagnostic.show(nil, 0, nil, diagnosticConfig)
  else
    vim.diagnostic.hide()
  end
end

vim.keymap.set('n', '<leader>x', toggle_diagnostics, {desc = "Toggle diagnostics"})
