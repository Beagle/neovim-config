------------------------------------------------------------
-- N.B. You must set leader before anything else, because --
-- you can't change it if a plugin sets it before you do  --
------------------------------------------------------------
vim.keymap.set("n", "<Space>", "<Nop>", {silent = true}) -- allows space leader
vim.g.mapleader      = " "  -- leader key for custom bindings
vim.g.maplocalleader = " "  -- leader key for custom bindings

--------------------------------------------------------------
-- Now, first load lazy.nvim because it handles all plugins --
-- Then do everything else you might need                   --
--------------------------------------------------------------
require("config.lazy")
require("config.options")
require("config.display-options")
require("config.search-behavior")
require("config.window-behavior")
require("config.buffer-behavior")
require("config.indent-behavior")
require("config.colors")
require("config.diagnostic-signs")
