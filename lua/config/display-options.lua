-------------
-- Display --
-------------

-------------
-- options --
-------------
vim.o.number        = true         -- show line numbers on left of window
vim.o.termguicolors = true         -- use gui colors instead of term colors
vim.o.colorcolumn   = "80"         -- add highlight to show max line length
vim.o.showmatch     = true         -- Highlight matching brackets when cursored
vim.o.linebreak     = true         -- breaks long lines on word boundaries
vim.o.laststatus    = 2            -- always have a status line on last window
vim.o.showcmdloc    = "statusline" -- show keystrokes in status line of window
vim.o.showmode      = true         -- display current mode on status line

-----------------------------------
-- Highlight trailing whitespace --
-----------------------------------
vim.cmd.highlight("EoLSpace ctermbg=238 guibg=#990000")
vim.cmd("match EoLSpace /\\s\\+$/")

------------------
-- key bindings --
------------------
local map = vim.keymap.set

map('n', '<leader>n', ':setlocal number!<cr>', {desc = "Toggle line numbers"})
map('n', '<leader>m', ':set nowrap!<cr>', {desc = "Toggle line wrap"})

  -- gutters (left columns for numbers and indicators)
map('n', '<leader>g', ':set signcolumn=no <bar> :set nonumber<cr>',
    {desc = "Hide line numbers and sign column"})
map('n', '<leader>G', ':set signcolumn=auto <bar> :set number<cr>',
    {desc = "Show line numbers and sign column"})

  -- toggle color column
map('n', '<leader>c',
    ':exe "set colorcolumn=" . (&colorcolumn == "" ? "80" : "")<CR>',
    {desc = "Toggle the 'max line length' colorcolumn"})
