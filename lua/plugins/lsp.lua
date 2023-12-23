local lspconfig = require("lspconfig")
lspconfig.pyright.setup {}
lspconfig.clangd.setup {}
lspconfig.lua_ls.setup {}

vim.keymap.set('n', '<LEADER>=', vim.diagnostic.goto_next)
vim.keymap.set('n', '<LEADER>-', vim.diagnostic.goto_prev)
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
