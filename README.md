# Installation
1. Clone this repository
1. Install neovim >0.10
1. Run neovim
1. `:Lazy`
1. `C`
1. `I`
1. Close and re-open nvim

# Let me give you the high level in like 4 sentences

1. `init.lua` is the entry point for everything
1. lazy.nvim needs to be loaded first, after you define your leader. It installs
every plugin that it finds in any files in `./lua/plugins/`
1. mason.nvim is exactly like a plugin manager, except it doesn't manage
plugins, it manages OTHER packages that are used for language parsing, syntax,
linting, formatting, etc
1. In init.lua you must manually require any new config file you place in
`./lua/config/`

# Useful bindings
1. `<leader><leader>` opens a file searcher that searches for files by name and
`<leader>/` opens a file searcher that searches for files by grep
1. `<leader>a` opens a directory tree browser and `<leader>ff` opens that same
browser but jumps to the location of the file you're currently editing
1. OH, and this fucking slaps, `<leader>r` shows you the contents of your
goddamned registers!!!

# Note on performance
If you run into a performance problem while coding, the culprit is likely going
to be the tools installed by Mason, because they eat a lot of memory and CPU
parsing your projects and stuff. If you have performance issues, your best bet
is to use `:MasonUninstall` and remove whatever tools are installed for the
language you were editing when you experienced the performance issue.
That would be the fastest escape hatch to get you back to functional. You could
try fucking with config, but generally you're going to hit a perf issue EXACTLY
when you don't have time to figure shit out because you got fucking work to do.

So just `:MasonUninstall <whatever>`
