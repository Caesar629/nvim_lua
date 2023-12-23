local lspconfig = require("lspconfig")
lspconfig.pyright.setup {}
lspconfig.clangd.setup {}
lspconfig.lua_ls.setup {}


vim.keymap.set('n', '<LEADER>=', vim.diagnostic.goto_next)
vim.keymap.set('n', '<LEADER>-', vim.diagnostic.goto_prev)


vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'
    local opts = { buffer = ev.buf }
    --
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
  end,
})
