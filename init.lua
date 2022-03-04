require"user.plugins"
require"user.keymappings"
require"user.settings"
require"user.nvim-tree"
require('nvim-autopairs').setup{}
require"user.toggleterm"
require'hop'.setup()
require'todo-comments'.setup{}
require'lspconfig'.pyright.setup{}
require'lspconfig'.tsserver.setup{}
require'lspconfig'.bashls.setup{}
require'lspconfig'.sumneko_lua.setup{}
require"user.symbols_outline"
require"user.compe"
require"user.zen-mode"
require"user.lualine"
require"user.gitsigns"
require"user.colorscheme"
require"bufferline".setup{}




--indent lines
--vim.opt.termguicolors = true
--vim.cmd [[highlight IndentBlanklineIndent5 guifg=#6699cc gui=nocombine]]

-- vim.opt.list = true

-- require("indent_blankline").setup {
--    space_char_blankline = " ",
--    char_highlight_list = {
--        "IndentBlanklineIndent5",
--    },
--}



