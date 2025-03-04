---------------------
-- buffer behavior --
---------------------

------------------
-- key bindings --
------------------
local map = vim.keymap.set

map('n', '<leader>[', ':bprevious<cr>', {desc = "Move to previous buffer"})
map('n', '<leader>]', ':bnext<cr>', {desc = "Move to next bufffer"})
map('n', '<leader>]', ':bnext<cr>', {desc = "Move to next bufffer"})
map('n', '<leader>N', ':enew<cr>', {desc = "Open a new empty buffer"})
map('n', '<leader>q', ':bp <BAR> bd #<cr>', {desc = "Close buffer, go to prev"})
