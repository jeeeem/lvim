-- HACK: until "attempt to index local 'query' reddit neovim" is fix while opening .md file
lvim.builtin.indentlines.options.use_treesitter = false
lvim.builtin.indentlines.options.buftype_exclude = { "terminal", "nofile", "help" }
