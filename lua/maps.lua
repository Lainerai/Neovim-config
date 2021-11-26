local cmd = vim.cmd
local map = vim.api.nvim_set_keymap
local M = {}

-- map the leader key
map('n', '<Space>', '', {})
vim.g.mapleader = ' '

local options = { noremap = true, silent = true }
map('n', '<leader><esc>', ':nohlsearch<cr>', options)
map('n', '<leader>n', ':bnext<cr>', options)
map('n', '<leader>p', ':bprev<cr>', options)

-- CHADtree
map('n', '<leader>v', ':CHADopen<cr>', options)

-- Quit, close buffers, etc.
local silent = { silent = true }

map('n', '<leader>q', '<cmd>qa<cr>', silent)
map('n', '<leader>x', '<cmd>x!<cr>', silent)
map('n', '<leader>d', '<cmd>Sayonara<cr>', { silent = true, nowait = true })

-- Save buffer
map('n', '<leader>w', '<cmd>w<cr>', { silent = true })

