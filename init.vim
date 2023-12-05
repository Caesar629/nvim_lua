lua require("core.options")
lua require("plugins.plugins-setup")
lua require("core.keymaps")


lua require("plugins.nvim-tree")
lua require("plugins/treesitter")
lua require("plugins/comment")
lua require("plugins/autopairs")
lua require("plugins/bufferline")
lua require("plugins/gitsigns")
lua require("plugins/telescope")
lua require("plugins/lsp")
lua require("plugins/cmp")

set t_Co=256
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
set background=dark    " Setting dark mode
colorscheme deus
let g:deus_termcolors=256
