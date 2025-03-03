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

------------------
-- key bindings --
------------------
local map = vim.keymap.set

map('n', '<leader>n', ':setlocal number!<cr>') -- toggle line numbers
map('n', '<leader>m', ':set nowrap!<cr>')      -- toggle line wrap

  -- gutters (left columns for numbers and indicators)
map('n', '<leader>g', ':set signcolumn=no <bar> :set nonumber<cr>') -- hide
map('n', '<leader>G', ':set signcolumn=auto <bar> :set number<cr>') -- show

  -- toggle color column
map('n', '<leader>c', ':exe "set colorcolumn=" . (&colorcolumn == "" ? "80" : "")<CR>')
