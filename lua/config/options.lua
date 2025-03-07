---------------------
-- local variables --
---------------------
local o   = vim.o   -- vim.api.nvim_set_option()
local map = vim.keymap.set

---------------------
-- global behavior --
---------------------
o.confirm    = true   -- on quit: ask to save changes, discard, or cancel
o.timeoutlen = 600    -- timeout duration waiting for command sequence

--------------------------
-- performance settings --
--------------------------
--o.maxmempattern = 8000 -- turns off syntax highlighting for very long lines

------------------------------
-- filesystem read behavior --
------------------------------
vim.opt.wildignore:append{'tags', '.*.un~', '*.pyc'}
o.wildmode = "longest:full,full"

---------------------------
-- autocomplete behavior --
---------------------------
-- o.ofu omnifunc is commented out while I experiment
o.ofu = "syntaxcomplete#Complete" -- what function to use for omni complete

-- Start interactive EasyAlign for a motion/text object (e.g. gaip)
map("n", "ga", "<Plug>(EasyAlign)")

-- Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
map("v", "<Enter>", "<Plug>(EasyAlign)")

-- make :<W/Q> behave the same as :<w/q>
vim.api.nvim_create_user_command('W', 'write', {desc = "Alias for :w"})
vim.api.nvim_create_user_command('Q', 'quit', {desc = "Alias for :q"})
