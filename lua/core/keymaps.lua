-- 定义mapleader 

vim.g.mapleader=' '

-- map 

local map = vim.keymap.set

-- 定义 insert model keymap

map('i','jk','<esc>')

-- 定义 normal model keymap

map('n','<leader>w','<cmd>w<cr>')
map('n',',',':')
map('n','<leader>q','<cmd>q<cr>')
map('n','<leader>s','<cmd>source %<cr>')
map('n','<leader>n','<cmd>bnext<cr>')
map('n','<leader>e','<cmd>Neotree<cr>')
