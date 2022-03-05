--[[
========================
==== native keymaps ====
======================== --]]


-- Leader Key
vim.g.mapleader=" "

-- Buffer movements
vim.api.nvim_set_keymap("n", "<leader>ls", ":!ls<CR>", { noremap = true, silent =  true})
vim.api.nvim_set_keymap("n", "<leader>j", ":bp<CR>", { noremap = true, silent =  true})
vim.api.nvim_set_keymap("n", "<leader>k", ":bn<CR>", { noremap = true, silent =  true})
vim.api.nvim_set_keymap("n", "<leader>x", ":bd<CR>", { noremap = true, silent =  true})
vim.api.nvim_set_keymap("n", "<leader>n", ":enew<CR>", { noremap = true, silent =  true})
vim.api.nvim_set_keymap("n", "<leader>o", ":e ", { noremap = true, silent =  true})

-- Window movement
vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true, silent =  true})
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true, silent =  true})
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true, silent =  true})
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true, silent =  true})

-- Indenting
vim.api.nvim_set_keymap("v", ">", ">gv", { noremap = true, silent =  true})
vim.api.nvim_set_keymap("v", "<", "<gv", { noremap = true, silent =  true})

-- Escaping
vim.api.nvim_set_keymap("i", "jj", "<ESC>", { noremap = true, silent =  true})

-- Move line/block vmode
vim.api.nvim_set_keymap("v", "K", ":move \'<-2<CR>gv-gv\'", { noremap = true, silent =  true})
vim.api.nvim_set_keymap("v", "J", ":move \'>+1<CR>gv-gv\'", { noremap = true, silent =  true})


--[[
========================
==== plugin keymaps ====
========================
--]]


-- NvimTree
vim.api.nvim_set_keymap("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent =  true})

-- Toggleterm
vim.api.nvim_set_keymap("n", "<leader>t", ":ToggleTerm size=10 dir=. direction=float<CR>", { noremap = true, silent =  true})

-- Hop motions
vim.api.nvim_set_keymap("n", "<leader>f", ":HopLine<CR>", { noremap = true, silent =  true})

-- Telescope
vim.api.nvim_set_keymap("n", "<leader>s", ":Telescope find_files<CR>", { noremap = true, silent =  true})

-- Zen-Mode
vim.api.nvim_set_keymap("n", "<leader>z", ":ZenMode<CR>", { noremap = true, silent =  true})

-- Git 
vim.api.nvim_set_keymap("n", "<leader>b", ":GitBlameToggle<CR>", { noremap = true, silent =  true})

-- Compe
vim.api.nvim_set_keymap("i", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<leader><Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<leader><S-Tab>", "v:lua.s_tab_complete()", {expr = true})

