---------------------
-- buffer behavior --
---------------------

------------------
-- key bindings --
------------------
local map = vim.keymap.set

map('n', '<leader>[', ':bprevious<cr>') -- Move to previous bufffer
map('n', '<leader>]', ':bnext<cr>')     -- Move to next bufffer
map('n', '<leader>]', ':bnext<cr>')     -- Move to next bufffer
map('n', '<leader>N', ':enew<cr>')      -- Open a new empty buffer
map('n', '<leader>q', ':bp <BAR> bd #<cr>') -- Close current buffer, goto prev
