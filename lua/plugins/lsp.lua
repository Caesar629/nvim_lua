require("mason").setup({
  ui = {
      icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
      }
  }
})

require("mason-lspconfig").setup({
  -- 确保安装，根据需要填写
  ensure_installed = {
    "lua_ls",
    "clangd",
    "pyright",
  },
})

local lspconfig = require("lspconfig")
lspconfig.pyright.setup{}
lspconfig.clangd.setup{}
lspconfig.lua_ls.setup{}

vim.keymap.set('n', '<LEADER>=', vim.diagnostic.goto_next)
vim.keymap.set('n', '<LEADER>-', vim.diagnostic.goto_prev)
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
