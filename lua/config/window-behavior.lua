---------------------
-- window behavior --
---------------------

-------------
-- options --
-------------
vim.o.scrolloff     = 4 -- lines between your cursor and edge of window
vim.o.sidescrolloff = 5 -- columns between your custor and edge of window

------------------
-- key bindings --
------------------
local map = vim.keymap.set

  -- NB: see `:help wincmd` - window commands sit behing Ctl-w by default

  -- Move between windows with ctl-direction instead of ctl-w + direction
map('n', '<C-h>', '<C-w>h')
map('n', '<C-j>', '<C-w>j')
map('n', '<C-k>', '<C-w>k')
map('n', '<C-l>', '<C-w>l')
map('n', '<C-p>', '<C-w>p') -- move to PREVIOUS window with ctl-p

map('n', '<leader>w', '<C-w>c') -- Close current window
map('n', '<leader>o', '<C-w>o') -- Close all others windows

  -- Resize windows with alt-direction instead of ctl-w + </>/+/-
local defaultModes = {'v', 'n', 's', 'o'} -- matches old vim map ?
map(defaultModes, '<M-h>', '<C-w><lt>')
map(defaultModes, '<M-j>', '<C-w>+')
map(defaultModes, '<M-k>', '<C-w>-')
map(defaultModes, '<M-l>', '<C-w>>')

  -- Rearrange windows
map(defaultModes, '<leader>wh', '<C-w>H') -- move current window to left
map(defaultModes, '<leader>wj', '<C-w>J') -- move current window to bottom
map(defaultModes, '<leader>wk', '<C-w>K') -- move current window to top
map(defaultModes, '<leader>wl', '<C-w>L') -- move current window to right
