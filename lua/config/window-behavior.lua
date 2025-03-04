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
map('n', '<C-h>', '<C-w>h', {desc = "Activate window to the left of cursor"})
map('n', '<C-j>', '<C-w>j', {desc = "Activate window below cursor"})
map('n', '<C-k>', '<C-w>k', {desc = "Activate window above cursor"})
map('n', '<C-l>', '<C-w>l', {desc = "Activate window to the right of cursor"})
map('n', '<C-p>', '<C-w>p', {desc = "Move to previously active window"})

map('n', '<leader>ww', '<C-w>c', {desc = "Close current window"})
map('n', '<leader>o', '<C-w>o', {desc = "Close all others windows"})

  -- Resize windows with alt-direction instead of ctl-w + </>/+/-
local defaultModes = {'v', 'n', 's', 'o'} -- matches old vim map ?
map(defaultModes, '<M-h>', '<C-w><lt>', {desc = "Make current window thinner"})
map(defaultModes, '<M-j>', '<C-w>+', {desc = "Make current window taller"})
map(defaultModes, '<M-k>', '<C-w>-', {desc = "Make current window shorter"})
map(defaultModes, '<M-l>', '<C-w>>', {desc = "Make current window wider"})

  -- Rearrange windows
map(defaultModes, '<leader>wh', '<C-w>H', {desc = "move current window to left"})
map(defaultModes, '<leader>wj', '<C-w>J', {desc = "move current window to bottom"})
map(defaultModes, '<leader>wk', '<C-w>K', {desc = "move current window to top"})
map(defaultModes, '<leader>wl', '<C-w>L', {desc = "move current window to right"})

 -- By default, open help windows in a vertical split on the right
vim.api.nvim_create_autocmd("FileType", {
    pattern = "help",
    callback = function() vim.cmd([[wincmd L|vert resize 90]]) end,
})
