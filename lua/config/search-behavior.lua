---------------------
-- search behavior --
---------------------

-------------
-- options --
-------------
local o   = vim.o   -- vim.api.nvim_set_option()

o.ignorecase  = true -- Do case insensitive matching
o.smartcase   = true -- Do smart case matching when searching

------------------
-- key bindings --
------------------
local map = vim.keymap.set

map('n', '<leader><esc>', ':let @/ = ""<cr>') -- remove highlight after search
