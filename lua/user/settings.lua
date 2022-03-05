-- basic settings

local opt_options= {
    number = true,
    relativenumber = true,             -- allow relative row numbers
    shiftwidth = 4,                    -- the number of spaces inserted for every indentation
    showtabline = 2,                   -- always show tabs
    fileencoding = 'UTF-8',            -- codification applied to a file
    hidden = true,                     -- hide files in the background instead of closing them
    termguicolors = true,              -- set term gui colors
    splitbelow = true,                 -- force all horizontal splits to go below the window
    splitright = true,                 -- force all vertical splits to go on the right of the window
    cursorline = true,                 -- highlight the current line
}


for key,value in pairs(opt_options) do
    vim.opt[key] = value
end
    

local g_options = {
    -- python3
    python3_host_prog = '/usr/bin/python3',
    nvim_tree_respect_buf_cwd = 1,
}

for key,value in pairs(g_options) do
    vim.g[key] = value
end
