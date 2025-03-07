-- Treesitter folding
vim.o.foldmethod = 'expr'
vim.o.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.o.foldlevel = 99
vim.o.foldlevelstart = 1
vim.o.foldnestmax = 5
