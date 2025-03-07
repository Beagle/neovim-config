-- Treesitter folding
vim.o.foldmethod = 'expr'
vim.o.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.o.foldlevel = 99
vim.o.foldlevelstart = 2
vim.o.foldnestmax = 5
